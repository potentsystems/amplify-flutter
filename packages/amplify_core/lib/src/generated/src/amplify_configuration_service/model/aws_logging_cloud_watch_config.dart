// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_logging_cloud_watch_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/amplify_logging_constraints.dart'
    as _i3;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/logging_remote_configuration.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'aws_logging_cloud_watch_config.g.dart';

abstract class AWSLoggingCloudWatchConfig
    with _i1.AWSEquatable<AWSLoggingCloudWatchConfig>
    implements
        Built<AWSLoggingCloudWatchConfig, AWSLoggingCloudWatchConfigBuilder> {
  factory AWSLoggingCloudWatchConfig({
    required String logGroupName,
    required String region,
    bool? enable,
    int? localStoreMaxSize,
    int? flushInterval,
    _i2.LoggingRemoteConfiguration? defaultRemoteConfiguration,
    _i3.AmplifyLoggingConstraints? loggingConstraints,
  }) {
    enable ??= true;
    localStoreMaxSize ??= 5;
    flushInterval ??= 60;
    return _$AWSLoggingCloudWatchConfig._(
      logGroupName: logGroupName,
      region: region,
      enable: enable,
      localStoreMaxSize: localStoreMaxSize,
      flushInterval: flushInterval,
      defaultRemoteConfiguration: defaultRemoteConfiguration,
      loggingConstraints: loggingConstraints,
    );
  }

  factory AWSLoggingCloudWatchConfig.build(
          [void Function(AWSLoggingCloudWatchConfigBuilder) updates]) =
      _$AWSLoggingCloudWatchConfig;

  const AWSLoggingCloudWatchConfig._();

  static const List<_i4.SmithySerializer<AWSLoggingCloudWatchConfig>>
      serializers = [AWSLoggingCloudWatchConfigSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSLoggingCloudWatchConfigBuilder b) {
    b.enable = true;
    b.localStoreMaxSize = 5;
    b.flushInterval = 60;
  }

  String get logGroupName;
  String get region;
  bool get enable;
  int get localStoreMaxSize;
  int get flushInterval;
  _i2.LoggingRemoteConfiguration? get defaultRemoteConfiguration;
  _i3.AmplifyLoggingConstraints? get loggingConstraints;
  @override
  List<Object?> get props => [
        logGroupName,
        region,
        enable,
        localStoreMaxSize,
        flushInterval,
        defaultRemoteConfiguration,
        loggingConstraints,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSLoggingCloudWatchConfig')
      ..add(
        'logGroupName',
        logGroupName,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        'enable',
        enable,
      )
      ..add(
        'localStoreMaxSize',
        localStoreMaxSize,
      )
      ..add(
        'flushInterval',
        flushInterval,
      )
      ..add(
        'defaultRemoteConfiguration',
        defaultRemoteConfiguration,
      )
      ..add(
        'loggingConstraints',
        loggingConstraints,
      );
    return helper.toString();
  }
}

class AWSLoggingCloudWatchConfigSerializer
    extends _i4.StructuredSmithySerializer<AWSLoggingCloudWatchConfig> {
  const AWSLoggingCloudWatchConfigSerializer()
      : super('AWSLoggingCloudWatchConfig');

  @override
  Iterable<Type> get types => const [
        AWSLoggingCloudWatchConfig,
        _$AWSLoggingCloudWatchConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSLoggingCloudWatchConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSLoggingCloudWatchConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'defaultRemoteConfiguration':
          result.defaultRemoteConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.LoggingRemoteConfiguration),
          ) as _i2.LoggingRemoteConfiguration));
        case 'enable':
          result.enable = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'flushInterval':
          result.flushInterval = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'localStoreMaxSize':
          result.localStoreMaxSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'logGroupName':
          result.logGroupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'loggingConstraints':
          result.loggingConstraints.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.AmplifyLoggingConstraints),
          ) as _i3.AmplifyLoggingConstraints));
        case 'region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSLoggingCloudWatchConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSLoggingCloudWatchConfig(
      :defaultRemoteConfiguration,
      :enable,
      :flushInterval,
      :localStoreMaxSize,
      :logGroupName,
      :loggingConstraints,
      :region
    ) = object;
    result$.addAll([
      'enable',
      serializers.serialize(
        enable,
        specifiedType: const FullType(bool),
      ),
      'flushInterval',
      serializers.serialize(
        flushInterval,
        specifiedType: const FullType(int),
      ),
      'localStoreMaxSize',
      serializers.serialize(
        localStoreMaxSize,
        specifiedType: const FullType(int),
      ),
      'logGroupName',
      serializers.serialize(
        logGroupName,
        specifiedType: const FullType(String),
      ),
      'region',
      serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ),
    ]);
    if (defaultRemoteConfiguration != null) {
      result$
        ..add('defaultRemoteConfiguration')
        ..add(serializers.serialize(
          defaultRemoteConfiguration,
          specifiedType: const FullType(_i2.LoggingRemoteConfiguration),
        ));
    }
    if (loggingConstraints != null) {
      result$
        ..add('loggingConstraints')
        ..add(serializers.serialize(
          loggingConstraints,
          specifiedType: const FullType(_i3.AmplifyLoggingConstraints),
        ));
    }
    return result$;
  }
}