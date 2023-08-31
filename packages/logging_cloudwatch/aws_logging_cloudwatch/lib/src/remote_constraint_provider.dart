// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:io';

// TODO(nikahsn): remove after implementing the get loggingConstraint.
// ignore_for_file: unused_field

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:http/http.dart' as http;

/// {@template aws_logging_cloudwatch.remote_logging_constraint_provider}
/// An Interface to provide custom implementation for
/// [RemoteLoggingConstraintProvider]
/// It gets the [LoggingConstraint] from a remote location and cache it.
/// {@endtemplate}
abstract class RemoteLoggingConstraintProvider {
  /// Returns logging constraint from cache or `null` if cache is missing.
  LoggingConstraint? get loggingConstraint;
}

/// {@template aws_logging_cloudwatch.default_remote_logging_constraint_provider}
/// Default implementation of [RemoteLoggingConstraintProvider] to fetch
/// [LoggingConstraint] from an http endpoint periodically.
/// {@endtemplate}
class DefaultRemoteLoggingConstraintProvider
    implements RemoteLoggingConstraintProvider {
  /// {@macro aws_logging_cloudwatch.default_remote_logging_constraint_provider}
  DefaultRemoteLoggingConstraintProvider({
    required DefaultRemoteConfiguration config,
    required AWSCredentialsProvider credentialsProvider,
  })  : _config = config,
        _credentialsProvider = credentialsProvider;

  final DefaultRemoteConfiguration _config;
  final AWSCredentialsProvider _credentialsProvider;

  LoggingConstraint? _loggingConstraint;
  DateTime? _lastUpdated;

  /// The signer to sign the request.
  static const signer = AWSSigV4Signer();

  /// The scope to sign the request.
  final scope = AWSCredentialScope(region: 'us-west-2', service: AWSService.s3);

  static final _logger = AmplifyLogger('default-remote-config');

  Timer? _timer;

  Future<void> _saveConstraintLocally(LoggingConstraint constraint) async {
    final file = File('logging_constraint.json');
    await file.writeAsString(jsonEncode(constraint));
  }

  Future<LoggingConstraint?> _getConstraintFromLocalStorage() async {
    final file = File('logging_constraint.json');
    if (await file.exists()) {
      final content = await file.readAsString();
      return LoggingConstraint.fromJson(
        jsonDecode(content) as Map<String, dynamic>,
      );
    }
    return null;
  }

  Future<void> _fetchAndCacheConstraintFromEndpoint() async {
    try {
      final constraint = await _fetchConstraintFromEndpoint();
      if (constraint != null) {
        _loggingConstraint = constraint;
        _lastUpdated = DateTime.now();
        await _saveConstraintLocally(constraint);
      }
    } catch (error) {
      _logger.debug('Error fetching constraints: $error');
    }
  }

  Future<LoggingConstraint?> _fetchConstraintFromEndpoint() async {
    final uri = Uri.parse(_config.endpoint);

    final request = AWSHttpRequest(method: AWSHttpMethod.get, uri: uri);

    final signedRequest = await signer.sign(
      request,
      credentialScope: scope,
    );

    final headers = signedRequest.headers.map<String, String>(
      MapEntry<String, String>.new,
    );

    final response = await http.get(uri, headers: headers);

    // final response = await http.get(Uri.parse(_config.endpoint));
    if (response.statusCode == 200) {
      final fetchedConstraint = LoggingConstraint.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>,
      );
      return fetchedConstraint;
    }
    throw Exception(
      'Failed to fetch logging constraint from ${_config.endpoint}',
    );
  }

  @override
  LoggingConstraint? get loggingConstraint {
    if (_loggingConstraint != null &&
        _lastUpdated != null &&
        DateTime.now().difference(_lastUpdated!).inSeconds <=
            _config.refreshIntervalInSeconds.inSeconds) {
      return _loggingConstraint;
    }
    // Load from local storage synchronously
    final file = File('logging_constraint.json');
    if (file.existsSync()) {
      final content = file.readAsStringSync();
      return LoggingConstraint.fromJson(
        jsonDecode(content) as Map<String, dynamic>,
      );
    }
    return null;
  }

  /// Initializes and starts the periodic fetch.
  void initialize() {
    _fetchAndCacheConstraintFromEndpoint(); // Fetch once immediately on initialize
    _refreshConstraintPeriodically();
  }

  /// Refreshes the constraint from the endpoint periodically.
  Future<void> _refreshConstraintPeriodically() async {
    while (true) {
      _timer?.cancel();
      _timer = Timer.periodic(_config.refreshIntervalInSeconds, (timer) async {
        await _fetchAndCacheConstraintFromEndpoint();
      });
    }
  }
}

/// {@template aws_logging_cloudwatch.default_remote_configuration}
/// The configuration for [DefaultRemoteLoggingConstraintProvider]
/// {@endtemplate}
class DefaultRemoteConfiguration {
  /// {@macro aws_logging_cloudwatch.default_remote_configuration}
  const DefaultRemoteConfiguration({
    required this.endpoint,
    this.refreshIntervalInSeconds = const Duration(seconds: 1200),
  });

  /// The endpoint to fetch the `loggingConstraint`.
  final String endpoint;

  /// The referesh interval in seconds to fetch the `loggingConstraint`.
  final Duration refreshIntervalInSeconds;
}
