// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.list_stack_set_operation_results_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_result_summary.dart';

part 'list_stack_set_operation_results_output.g.dart';

abstract class ListStackSetOperationResultsOutput
    with
        _i1.AWSEquatable<ListStackSetOperationResultsOutput>
    implements
        Built<ListStackSetOperationResultsOutput,
            ListStackSetOperationResultsOutputBuilder> {
  factory ListStackSetOperationResultsOutput({
    List<StackSetOperationResultSummary>? summaries,
    String? nextToken,
  }) {
    return _$ListStackSetOperationResultsOutput._(
      summaries: summaries == null ? null : _i2.BuiltList(summaries),
      nextToken: nextToken,
    );
  }

  factory ListStackSetOperationResultsOutput.build(
          [void Function(ListStackSetOperationResultsOutputBuilder) updates]) =
      _$ListStackSetOperationResultsOutput;

  const ListStackSetOperationResultsOutput._();

  /// Constructs a [ListStackSetOperationResultsOutput] from a [payload] and [response].
  factory ListStackSetOperationResultsOutput.fromResponse(
    ListStackSetOperationResultsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<ListStackSetOperationResultsOutput>>
      serializers = [ListStackSetOperationResultsOutputAwsQuerySerializer()];

  /// A list of `StackSetOperationResultSummary` structures that contain information about the specified operation results, for accounts and Amazon Web Services Regions that are included in the operation.
  _i2.BuiltList<StackSetOperationResultSummary>? get summaries;

  /// If the request doesn't return all results, `NextToken` is set to a token. To retrieve the next set of results, call `ListOperationResults` again and assign that token to the request object's `NextToken` parameter. If there are no remaining results, `NextToken` is set to `null`.
  String? get nextToken;
  @override
  List<Object?> get props => [
        summaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListStackSetOperationResultsOutput')
          ..add(
            'summaries',
            summaries,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class ListStackSetOperationResultsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ListStackSetOperationResultsOutput> {
  const ListStackSetOperationResultsOutputAwsQuerySerializer()
      : super('ListStackSetOperationResultsOutput');

  @override
  Iterable<Type> get types => const [
        ListStackSetOperationResultsOutput,
        _$ListStackSetOperationResultsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListStackSetOperationResultsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListStackSetOperationResultsOutputBuilder();
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
        case 'Summaries':
          result.summaries.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StackSetOperationResultSummary)],
            ),
          ) as _i2.BuiltList<StackSetOperationResultSummary>));
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    ListStackSetOperationResultsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListStackSetOperationResultsOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ListStackSetOperationResultsOutput(:summaries, :nextToken) = object;
    if (summaries != null) {
      result$
        ..add(const _i3.XmlElementName('Summaries'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          summaries,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(StackSetOperationResultSummary)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
