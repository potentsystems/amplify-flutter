// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_console_output_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_console_output_result.g.dart';

abstract class GetConsoleOutputResult
    with _i1.AWSEquatable<GetConsoleOutputResult>
    implements Built<GetConsoleOutputResult, GetConsoleOutputResultBuilder> {
  factory GetConsoleOutputResult({
    String? instanceId,
    String? output,
    DateTime? timestamp,
  }) {
    return _$GetConsoleOutputResult._(
      instanceId: instanceId,
      output: output,
      timestamp: timestamp,
    );
  }

  factory GetConsoleOutputResult.build(
          [void Function(GetConsoleOutputResultBuilder) updates]) =
      _$GetConsoleOutputResult;

  const GetConsoleOutputResult._();

  /// Constructs a [GetConsoleOutputResult] from a [payload] and [response].
  factory GetConsoleOutputResult.fromResponse(
    GetConsoleOutputResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetConsoleOutputResult>> serializers =
      [GetConsoleOutputResultEc2QuerySerializer()];

  /// The ID of the instance.
  String? get instanceId;

  /// The console output, base64-encoded. If you are using a command line tool, the tool decodes the output for you.
  String? get output;

  /// The time at which the output was last updated.
  DateTime? get timestamp;
  @override
  List<Object?> get props => [
        instanceId,
        output,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetConsoleOutputResult')
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'output',
        output,
      )
      ..add(
        'timestamp',
        timestamp,
      );
    return helper.toString();
  }
}

class GetConsoleOutputResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GetConsoleOutputResult> {
  const GetConsoleOutputResultEc2QuerySerializer()
      : super('GetConsoleOutputResult');

  @override
  Iterable<Type> get types => const [
        GetConsoleOutputResult,
        _$GetConsoleOutputResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetConsoleOutputResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetConsoleOutputResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'output':
          result.output = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'timestamp':
          result.timestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetConsoleOutputResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetConsoleOutputResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetConsoleOutputResult(:instanceId, :output, :timestamp) = object;
    if (instanceId != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (output != null) {
      result$
        ..add(const _i2.XmlElementName('Output'))
        ..add(serializers.serialize(
          output,
          specifiedType: const FullType(String),
        ));
    }
    if (timestamp != null) {
      result$
        ..add(const _i2.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          timestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}