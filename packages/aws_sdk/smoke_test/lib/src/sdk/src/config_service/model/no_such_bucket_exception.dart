// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.no_such_bucket_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'no_such_bucket_exception.g.dart';

/// The specified Amazon S3 bucket does not exist.
abstract class NoSuchBucketException
    with _i1.AWSEquatable<NoSuchBucketException>
    implements
        Built<NoSuchBucketException, NoSuchBucketExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified Amazon S3 bucket does not exist.
  factory NoSuchBucketException({String? message}) {
    return _$NoSuchBucketException._(message: message);
  }

  /// The specified Amazon S3 bucket does not exist.
  factory NoSuchBucketException.build(
          [void Function(NoSuchBucketExceptionBuilder) updates]) =
      _$NoSuchBucketException;

  const NoSuchBucketException._();

  /// Constructs a [NoSuchBucketException] from a [payload] and [response].
  factory NoSuchBucketException.fromResponse(
    NoSuchBucketException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<NoSuchBucketException>> serializers = [
    NoSuchBucketExceptionAwsJson11Serializer()
  ];

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'NoSuchBucketException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NoSuchBucketException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class NoSuchBucketExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<NoSuchBucketException> {
  const NoSuchBucketExceptionAwsJson11Serializer()
      : super('NoSuchBucketException');

  @override
  Iterable<Type> get types => const [
        NoSuchBucketException,
        _$NoSuchBucketException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  NoSuchBucketException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoSuchBucketExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
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
    NoSuchBucketException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final NoSuchBucketException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
