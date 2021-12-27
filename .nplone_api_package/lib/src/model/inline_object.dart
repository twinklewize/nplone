//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:typed_data';
import 'package:nplone_api/src/model/space_create.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object.g.dart';

/// InlineObject
///
/// Properties:
/// * [icon] - Иконка пространства
/// * [banner] - Баннер пространства
/// * [data] 
abstract class InlineObject implements Built<InlineObject, InlineObjectBuilder> {
    /// Иконка пространства
    @BuiltValueField(wireName: r'icon')
    Uint8List get icon;

    /// Баннер пространства
    @BuiltValueField(wireName: r'banner')
    Uint8List get banner;

    @BuiltValueField(wireName: r'data')
    SpaceCreate get data;

    InlineObject._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(InlineObjectBuilder b) => b;

    factory InlineObject([void updates(InlineObjectBuilder b)]) = _$InlineObject;

    @BuiltValueSerializer(custom: true)
    static Serializer<InlineObject> get serializer => _$InlineObjectSerializer();
}

class _$InlineObjectSerializer implements StructuredSerializer<InlineObject> {
    @override
    final Iterable<Type> types = const [InlineObject, _$InlineObject];

    @override
    final String wireName = r'InlineObject';

    @override
    Iterable<Object?> serialize(Serializers serializers, InlineObject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'icon')
            ..add(serializers.serialize(object.icon,
                specifiedType: const FullType(Uint8List)));
        result
            ..add(r'banner')
            ..add(serializers.serialize(object.banner,
                specifiedType: const FullType(Uint8List)));
        result
            ..add(r'data')
            ..add(serializers.serialize(object.data,
                specifiedType: const FullType(SpaceCreate)));
        return result;
    }

    @override
    InlineObject deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = InlineObjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'icon':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.icon = valueDes;
                    break;
                case r'banner':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Uint8List)) as Uint8List;
                    result.banner = valueDes;
                    break;
                case r'data':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(SpaceCreate)) as SpaceCreate;
                    result.data.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

