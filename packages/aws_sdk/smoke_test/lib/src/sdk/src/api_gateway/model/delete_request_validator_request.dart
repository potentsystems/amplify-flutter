// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.delete_request_validator_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'delete_request_validator_request.g.dart';

/// Deletes a specified RequestValidator of a given RestApi.
abstract class DeleteRequestValidatorRequest
    with
        _i1.HttpInput<DeleteRequestValidatorRequestPayload>,
        _i2.AWSEquatable<DeleteRequestValidatorRequest>
    implements
        Built<DeleteRequestValidatorRequest,
            DeleteRequestValidatorRequestBuilder>,
        _i1.EmptyPayload,
        _i1.HasPayload<DeleteRequestValidatorRequestPayload> {
  /// Deletes a specified RequestValidator of a given RestApi.
  factory DeleteRequestValidatorRequest({
    required String restApiId,
    required String requestValidatorId,
  }) {
    return _$DeleteRequestValidatorRequest._(
      restApiId: restApiId,
      requestValidatorId: requestValidatorId,
    );
  }

  /// Deletes a specified RequestValidator of a given RestApi.
  factory DeleteRequestValidatorRequest.build(
          [void Function(DeleteRequestValidatorRequestBuilder) updates]) =
      _$DeleteRequestValidatorRequest;

  const DeleteRequestValidatorRequest._();

  factory DeleteRequestValidatorRequest.fromRequest(
    DeleteRequestValidatorRequestPayload payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      DeleteRequestValidatorRequest.build((b) {
        if (labels['restApiId'] != null) {
          b.restApiId = labels['restApiId']!;
        }
        if (labels['requestValidatorId'] != null) {
          b.requestValidatorId = labels['requestValidatorId']!;
        }
      });

  static const List<_i1.SmithySerializer<DeleteRequestValidatorRequestPayload>>
      serializers = [DeleteRequestValidatorRequestRestJson1Serializer()];

  /// The string identifier of the associated RestApi.
  String get restApiId;

  /// The identifier of the RequestValidator to be deleted.
  String get requestValidatorId;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'restApiId':
        return restApiId;
      case 'requestValidatorId':
        return requestValidatorId;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  DeleteRequestValidatorRequestPayload getPayload() =>
      DeleteRequestValidatorRequestPayload();
  @override
  List<Object?> get props => [
        restApiId,
        requestValidatorId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteRequestValidatorRequest')
      ..add(
        'restApiId',
        restApiId,
      )
      ..add(
        'requestValidatorId',
        requestValidatorId,
      );
    return helper.toString();
  }
}

@_i3.internal
abstract class DeleteRequestValidatorRequestPayload
    with
        _i2.AWSEquatable<DeleteRequestValidatorRequestPayload>
    implements
        Built<DeleteRequestValidatorRequestPayload,
            DeleteRequestValidatorRequestPayloadBuilder>,
        _i1.EmptyPayload {
  factory DeleteRequestValidatorRequestPayload(
      [void Function(DeleteRequestValidatorRequestPayloadBuilder)
          updates]) = _$DeleteRequestValidatorRequestPayload;

  const DeleteRequestValidatorRequestPayload._();

  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteRequestValidatorRequestPayload');
    return helper.toString();
  }
}

class DeleteRequestValidatorRequestRestJson1Serializer extends _i1
    .StructuredSmithySerializer<DeleteRequestValidatorRequestPayload> {
  const DeleteRequestValidatorRequestRestJson1Serializer()
      : super('DeleteRequestValidatorRequest');

  @override
  Iterable<Type> get types => const [
        DeleteRequestValidatorRequest,
        _$DeleteRequestValidatorRequest,
        DeleteRequestValidatorRequestPayload,
        _$DeleteRequestValidatorRequestPayload,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  DeleteRequestValidatorRequestPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteRequestValidatorRequestPayloadBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteRequestValidatorRequestPayload object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
