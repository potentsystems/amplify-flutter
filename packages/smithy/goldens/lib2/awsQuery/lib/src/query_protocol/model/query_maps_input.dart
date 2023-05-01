// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_query_v2.query_protocol.model.query_maps_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_query_v2/src/query_protocol/model/greeting_struct.dart'
    as _i3;
import 'package:aws_query_v2/src/query_protocol/model/nested_struct_with_map.dart'
    as _i4;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'query_maps_input.g.dart';

abstract class QueryMapsInput
    with _i1.HttpInput<QueryMapsInput>, _i2.AWSEquatable<QueryMapsInput>
    implements Built<QueryMapsInput, QueryMapsInputBuilder> {
  factory QueryMapsInput({
    Map<String, String>? mapArg,
    Map<String, String>? renamedMapArg,
    Map<String, _i3.GreetingStruct>? complexMapArg,
    Map<String, String>? mapWithXmlMemberName,
    Map<String, String>? flattenedMap,
    Map<String, String>? flattenedMapWithXmlName,
    Map<String, List<String>>? mapOfLists,
    _i4.NestedStructWithMap? nestedStructWithMap,
  }) {
    return _$QueryMapsInput._(
      mapArg: mapArg == null ? null : _i5.BuiltMap(mapArg),
      renamedMapArg: renamedMapArg == null ? null : _i5.BuiltMap(renamedMapArg),
      complexMapArg: complexMapArg == null ? null : _i5.BuiltMap(complexMapArg),
      mapWithXmlMemberName: mapWithXmlMemberName == null
          ? null
          : _i5.BuiltMap(mapWithXmlMemberName),
      flattenedMap: flattenedMap == null ? null : _i5.BuiltMap(flattenedMap),
      flattenedMapWithXmlName: flattenedMapWithXmlName == null
          ? null
          : _i5.BuiltMap(flattenedMapWithXmlName),
      mapOfLists: mapOfLists == null ? null : _i5.BuiltListMultimap(mapOfLists),
      nestedStructWithMap: nestedStructWithMap,
    );
  }

  factory QueryMapsInput.build([void Function(QueryMapsInputBuilder) updates]) =
      _$QueryMapsInput;

  const QueryMapsInput._();

  factory QueryMapsInput.fromRequest(
    QueryMapsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    QueryMapsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(QueryMapsInputBuilder b) {}
  _i5.BuiltMap<String, String>? get mapArg;
  _i5.BuiltMap<String, String>? get renamedMapArg;
  _i5.BuiltMap<String, _i3.GreetingStruct>? get complexMapArg;
  _i5.BuiltMap<String, String>? get mapWithXmlMemberName;
  _i5.BuiltMap<String, String>? get flattenedMap;
  _i5.BuiltMap<String, String>? get flattenedMapWithXmlName;
  _i5.BuiltListMultimap<String, String>? get mapOfLists;
  _i4.NestedStructWithMap? get nestedStructWithMap;
  @override
  QueryMapsInput getPayload() => this;
  @override
  List<Object?> get props => [
        mapArg,
        renamedMapArg,
        complexMapArg,
        mapWithXmlMemberName,
        flattenedMap,
        flattenedMapWithXmlName,
        mapOfLists,
        nestedStructWithMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('QueryMapsInput');
    helper.add(
      'mapArg',
      mapArg,
    );
    helper.add(
      'renamedMapArg',
      renamedMapArg,
    );
    helper.add(
      'complexMapArg',
      complexMapArg,
    );
    helper.add(
      'mapWithXmlMemberName',
      mapWithXmlMemberName,
    );
    helper.add(
      'flattenedMap',
      flattenedMap,
    );
    helper.add(
      'flattenedMapWithXmlName',
      flattenedMapWithXmlName,
    );
    helper.add(
      'mapOfLists',
      mapOfLists,
    );
    helper.add(
      'nestedStructWithMap',
      nestedStructWithMap,
    );
    return helper.toString();
  }
}

class QueryMapsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<QueryMapsInput> {
  const QueryMapsInputAwsQuerySerializer() : super('QueryMapsInput');

  @override
  Iterable<Type> get types => const [
        QueryMapsInput,
        _$QueryMapsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  QueryMapsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QueryMapsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'MapArg':
          if (value != null) {
            result.mapArg.replace(const _i1.XmlBuiltMapSerializer(
                    indexer: _i1.XmlIndexer.awsQueryMap)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ));
          }
          break;
        case 'Foo':
          if (value != null) {
            result.renamedMapArg.replace(const _i1.XmlBuiltMapSerializer(
                    indexer: _i1.XmlIndexer.awsQueryMap)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ));
          }
          break;
        case 'ComplexMapArg':
          if (value != null) {
            result.complexMapArg.replace(const _i1.XmlBuiltMapSerializer(
                    indexer: _i1.XmlIndexer.awsQueryMap)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.GreetingStruct),
                ],
              ),
            ));
          }
          break;
        case 'MapWithXmlMemberName':
          if (value != null) {
            result.mapWithXmlMemberName.replace(const _i1.XmlBuiltMapSerializer(
              keyName: 'K',
              valueName: 'V',
              indexer: _i1.XmlIndexer.awsQueryMap,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ));
          }
          break;
        case 'FlattenedMap':
          if (value != null) {
            result.flattenedMap.addAll(const _i1.XmlBuiltMapSerializer(
              flattenedKey: 'FlattenedMap',
              indexer: _i1.XmlIndexer.awsQueryMap,
            )
                .deserialize(
                  serializers,
                  value is String ? const [] : (value as Iterable<Object?>),
                  specifiedType: const FullType(
                    _i5.BuiltMap,
                    [
                      FullType(String),
                      FullType(String),
                    ],
                  ),
                )
                .toMap()
                .cast());
          }
          break;
        case 'Hi':
          if (value != null) {
            result.flattenedMapWithXmlName
                .addAll(const _i1.XmlBuiltMapSerializer(
              keyName: 'K',
              valueName: 'V',
              flattenedKey: 'Hi',
              indexer: _i1.XmlIndexer.awsQueryMap,
            )
                    .deserialize(
                      serializers,
                      value is String ? const [] : (value as Iterable<Object?>),
                      specifiedType: const FullType(
                        _i5.BuiltMap,
                        [
                          FullType(String),
                          FullType(String),
                        ],
                      ),
                    )
                    .toMap()
                    .cast());
          }
          break;
        case 'MapOfLists':
          if (value != null) {
            result.mapOfLists.replace(const _i1.XmlBuiltMultimapSerializer(
                    indexer: _i1.XmlIndexer.awsQueryMap)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltListMultimap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ));
          }
          break;
        case 'NestedStructWithMap':
          if (value != null) {
            result.nestedStructWithMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.NestedStructWithMap),
            ) as _i4.NestedStructWithMap));
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
    final payload = (object as QueryMapsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'QueryMapsInputResponse',
        _i1.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.mapArg != null) {
      result
        ..add(const _i1.XmlElementName('MapArg'))
        ..add(
            const _i1.XmlBuiltMapSerializer(indexer: _i1.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          payload.mapArg!,
          specifiedType: const FullType.nullable(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.renamedMapArg != null) {
      result
        ..add(const _i1.XmlElementName('Foo'))
        ..add(
            const _i1.XmlBuiltMapSerializer(indexer: _i1.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          payload.renamedMapArg!,
          specifiedType: const FullType.nullable(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.complexMapArg != null) {
      result
        ..add(const _i1.XmlElementName('ComplexMapArg'))
        ..add(
            const _i1.XmlBuiltMapSerializer(indexer: _i1.XmlIndexer.awsQueryMap)
                .serialize(
          serializers,
          payload.complexMapArg!,
          specifiedType: const FullType.nullable(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i3.GreetingStruct),
            ],
          ),
        ));
    }
    if (payload.mapWithXmlMemberName != null) {
      result
        ..add(const _i1.XmlElementName('MapWithXmlMemberName'))
        ..add(const _i1.XmlBuiltMapSerializer(
          keyName: 'K',
          valueName: 'V',
          indexer: _i1.XmlIndexer.awsQueryMap,
        ).serialize(
          serializers,
          payload.mapWithXmlMemberName!,
          specifiedType: const FullType.nullable(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.flattenedMap != null) {
      result.addAll(const _i1.XmlBuiltMapSerializer(
        flattenedKey: 'FlattenedMap',
        indexer: _i1.XmlIndexer.awsQueryMap,
      ).serialize(
        serializers,
        payload.flattenedMap!,
        specifiedType: const FullType.nullable(
          _i5.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ));
    }
    if (payload.flattenedMapWithXmlName != null) {
      result.addAll(const _i1.XmlBuiltMapSerializer(
        keyName: 'K',
        valueName: 'V',
        flattenedKey: 'Hi',
        indexer: _i1.XmlIndexer.awsQueryMap,
      ).serialize(
        serializers,
        payload.flattenedMapWithXmlName!,
        specifiedType: const FullType.nullable(
          _i5.BuiltMap,
          [
            FullType(String),
            FullType(String),
          ],
        ),
      ));
    }
    if (payload.mapOfLists != null) {
      result
        ..add(const _i1.XmlElementName('MapOfLists'))
        ..add(const _i1.XmlBuiltMultimapSerializer(
                indexer: _i1.XmlIndexer.awsQueryMap)
            .serialize(
          serializers,
          payload.mapOfLists!,
          specifiedType: const FullType.nullable(
            _i5.BuiltListMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.nestedStructWithMap != null) {
      result
        ..add(const _i1.XmlElementName('NestedStructWithMap'))
        ..add(serializers.serialize(
          payload.nestedStructWithMap!,
          specifiedType: const FullType(_i4.NestedStructWithMap),
        ));
    }
    return result;
  }
}