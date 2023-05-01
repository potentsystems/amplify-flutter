// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.activate_type_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i6;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/logging_config.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/third_party_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/version_bump.dart'
    as _i5;

part 'activate_type_input.g.dart';

abstract class ActivateTypeInput
    with _i1.HttpInput<ActivateTypeInput>, _i2.AWSEquatable<ActivateTypeInput>
    implements Built<ActivateTypeInput, ActivateTypeInputBuilder> {
  factory ActivateTypeInput({
    _i3.ThirdPartyType? type,
    String? publicTypeArn,
    String? publisherId,
    String? typeName,
    String? typeNameAlias,
    bool? autoUpdate,
    _i4.LoggingConfig? loggingConfig,
    String? executionRoleArn,
    _i5.VersionBump? versionBump,
    _i6.Int64? majorVersion,
  }) {
    return _$ActivateTypeInput._(
      type: type,
      publicTypeArn: publicTypeArn,
      publisherId: publisherId,
      typeName: typeName,
      typeNameAlias: typeNameAlias,
      autoUpdate: autoUpdate,
      loggingConfig: loggingConfig,
      executionRoleArn: executionRoleArn,
      versionBump: versionBump,
      majorVersion: majorVersion,
    );
  }

  factory ActivateTypeInput.build(
      [void Function(ActivateTypeInputBuilder) updates]) = _$ActivateTypeInput;

  const ActivateTypeInput._();

  factory ActivateTypeInput.fromRequest(
    ActivateTypeInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ActivateTypeInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ActivateTypeInputBuilder b) {}

  /// The extension type.
  ///
  /// Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`, and `PublisherId`.
  _i3.ThirdPartyType? get type;

  /// The Amazon Resource Name (ARN) of the public extension.
  ///
  /// Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`, and `PublisherId`.
  String? get publicTypeArn;

  /// The ID of the extension publisher.
  ///
  /// Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`, and `PublisherId`.
  String? get publisherId;

  /// The name of the extension.
  ///
  /// Conditional: You must specify `PublicTypeArn`, or `TypeName`, `Type`, and `PublisherId`.
  String? get typeName;

  /// An alias to assign to the public extension, in this account and region. If you specify an alias for the extension, CloudFormation treats the alias as the extension type name within this account and region. You must use the alias to refer to the extension in your templates, API calls, and CloudFormation console.
  ///
  /// An extension alias must be unique within a given account and region. You can activate the same public resource multiple times in the same account and region, using different type name aliases.
  String? get typeNameAlias;

  /// Whether to automatically update the extension in this account and region when a new _minor_ version is published by the extension publisher. Major versions released by the publisher must be manually updated.
  ///
  /// The default is `true`.
  bool? get autoUpdate;

  /// Contains logging configuration information for an extension.
  _i4.LoggingConfig? get loggingConfig;

  /// The name of the IAM execution role to use to activate the extension.
  String? get executionRoleArn;

  /// Manually updates a previously-activated type to a new major or minor version, if available. You can also use this parameter to update the value of `AutoUpdate`.
  ///
  /// *   `MAJOR`: CloudFormation updates the extension to the newest major version, if one is available.
  ///
  /// *   `MINOR`: CloudFormation updates the extension to the newest minor version, if one is available.
  _i5.VersionBump? get versionBump;

  /// The major version of this extension you want to activate, if multiple major versions are available. The default is the latest major version. CloudFormation uses the latest available _minor_ version of the major version selected.
  ///
  /// You can specify `MajorVersion` or `VersionBump`, but not both.
  _i6.Int64? get majorVersion;
  @override
  ActivateTypeInput getPayload() => this;
  @override
  List<Object?> get props => [
        type,
        publicTypeArn,
        publisherId,
        typeName,
        typeNameAlias,
        autoUpdate,
        loggingConfig,
        executionRoleArn,
        versionBump,
        majorVersion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ActivateTypeInput');
    helper.add(
      'type',
      type,
    );
    helper.add(
      'publicTypeArn',
      publicTypeArn,
    );
    helper.add(
      'publisherId',
      publisherId,
    );
    helper.add(
      'typeName',
      typeName,
    );
    helper.add(
      'typeNameAlias',
      typeNameAlias,
    );
    helper.add(
      'autoUpdate',
      autoUpdate,
    );
    helper.add(
      'loggingConfig',
      loggingConfig,
    );
    helper.add(
      'executionRoleArn',
      executionRoleArn,
    );
    helper.add(
      'versionBump',
      versionBump,
    );
    helper.add(
      'majorVersion',
      majorVersion,
    );
    return helper.toString();
  }
}

class ActivateTypeInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ActivateTypeInput> {
  const ActivateTypeInputAwsQuerySerializer() : super('ActivateTypeInput');

  @override
  Iterable<Type> get types => const [
        ActivateTypeInput,
        _$ActivateTypeInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ActivateTypeInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivateTypeInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ThirdPartyType),
            ) as _i3.ThirdPartyType);
          }
          break;
        case 'PublicTypeArn':
          if (value != null) {
            result.publicTypeArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublisherId':
          if (value != null) {
            result.publisherId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TypeName':
          if (value != null) {
            result.typeName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TypeNameAlias':
          if (value != null) {
            result.typeNameAlias = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AutoUpdate':
          if (value != null) {
            result.autoUpdate = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'LoggingConfig':
          if (value != null) {
            result.loggingConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.LoggingConfig),
            ) as _i4.LoggingConfig));
          }
          break;
        case 'ExecutionRoleArn':
          if (value != null) {
            result.executionRoleArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VersionBump':
          if (value != null) {
            result.versionBump = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.VersionBump),
            ) as _i5.VersionBump);
          }
          break;
        case 'MajorVersion':
          if (value != null) {
            result.majorVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.Int64),
            ) as _i6.Int64);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ActivateTypeInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ActivateTypeInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.type != null) {
      result
        ..add(const _i1.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i3.ThirdPartyType),
        ));
    }
    if (payload.publicTypeArn != null) {
      result
        ..add(const _i1.XmlElementName('PublicTypeArn'))
        ..add(serializers.serialize(
          payload.publicTypeArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publisherId != null) {
      result
        ..add(const _i1.XmlElementName('PublisherId'))
        ..add(serializers.serialize(
          payload.publisherId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.typeName != null) {
      result
        ..add(const _i1.XmlElementName('TypeName'))
        ..add(serializers.serialize(
          payload.typeName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.typeNameAlias != null) {
      result
        ..add(const _i1.XmlElementName('TypeNameAlias'))
        ..add(serializers.serialize(
          payload.typeNameAlias!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.autoUpdate != null) {
      result
        ..add(const _i1.XmlElementName('AutoUpdate'))
        ..add(serializers.serialize(
          payload.autoUpdate!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.loggingConfig != null) {
      result
        ..add(const _i1.XmlElementName('LoggingConfig'))
        ..add(serializers.serialize(
          payload.loggingConfig!,
          specifiedType: const FullType(_i4.LoggingConfig),
        ));
    }
    if (payload.executionRoleArn != null) {
      result
        ..add(const _i1.XmlElementName('ExecutionRoleArn'))
        ..add(serializers.serialize(
          payload.executionRoleArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.versionBump != null) {
      result
        ..add(const _i1.XmlElementName('VersionBump'))
        ..add(serializers.serialize(
          payload.versionBump!,
          specifiedType: const FullType.nullable(_i5.VersionBump),
        ));
    }
    if (payload.majorVersion != null) {
      result
        ..add(const _i1.XmlElementName('MajorVersion'))
        ..add(serializers.serialize(
          payload.majorVersion!,
          specifiedType: const FullType.nullable(_i6.Int64),
        ));
    }
    return result;
  }
}