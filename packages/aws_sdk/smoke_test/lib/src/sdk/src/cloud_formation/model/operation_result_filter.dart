// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.operation_result_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/operation_result_filter_name.dart';

part 'operation_result_filter.g.dart';

/// The status that operation results are filtered by.
abstract class OperationResultFilter
    with _i1.AWSEquatable<OperationResultFilter>
    implements Built<OperationResultFilter, OperationResultFilterBuilder> {
  /// The status that operation results are filtered by.
  factory OperationResultFilter({
    OperationResultFilterName? name,
    String? values,
  }) {
    return _$OperationResultFilter._(
      name: name,
      values: values,
    );
  }

  /// The status that operation results are filtered by.
  factory OperationResultFilter.build(
          [void Function(OperationResultFilterBuilder) updates]) =
      _$OperationResultFilter;

  const OperationResultFilter._();

  static const List<_i2.SmithySerializer<OperationResultFilter>> serializers = [
    OperationResultFilterAwsQuerySerializer()
  ];

  /// The type of filter to apply.
  OperationResultFilterName? get name;

  /// The value to filter by.
  String? get values;
  @override
  List<Object?> get props => [
        name,
        values,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OperationResultFilter')
      ..add(
        'name',
        name,
      )
      ..add(
        'values',
        values,
      );
    return helper.toString();
  }
}

class OperationResultFilterAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<OperationResultFilter> {
  const OperationResultFilterAwsQuerySerializer()
      : super('OperationResultFilter');

  @override
  Iterable<Type> get types => const [
        OperationResultFilter,
        _$OperationResultFilter,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  OperationResultFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationResultFilterBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Name':
          result.name = (serializers.deserialize(
            value,
            specifiedType: const FullType(OperationResultFilterName),
          ) as OperationResultFilterName);
        case 'Values':
          result.values = (serializers.deserialize(
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
    OperationResultFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OperationResultFilterResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final OperationResultFilter(:name, :values) = object;
    if (name != null) {
      result$
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          name,
          specifiedType: const FullType.nullable(OperationResultFilterName),
        ));
    }
    if (values != null) {
      result$
        ..add(const _i2.XmlElementName('Values'))
        ..add(serializers.serialize(
          values,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
