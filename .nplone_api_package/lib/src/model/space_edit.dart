//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'space_edit.g.dart';

/// Данные
///
/// Properties:
/// * [name] - Имя пространства
/// * [website] - Вебсайт
/// * [description] - Описание
/// * [addressText] - Адрес
abstract class SpaceEdit implements Built<SpaceEdit, SpaceEditBuilder> {
    /// Имя пространства
    @BuiltValueField(wireName: r'name')
    String? get name;

    /// Вебсайт
    @BuiltValueField(wireName: r'website')
    String? get website;

    /// Описание
    @BuiltValueField(wireName: r'description')
    String? get description;

    /// Адрес
    @BuiltValueField(wireName: r'addressText')
    String? get addressText;

    SpaceEdit._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SpaceEditBuilder b) => b;

    factory SpaceEdit([void updates(SpaceEditBuilder b)]) = _$SpaceEdit;

    @BuiltValueSerializer(custom: true)
    static Serializer<SpaceEdit> get serializer => _$SpaceEditSerializer();
}

class _$SpaceEditSerializer implements StructuredSerializer<SpaceEdit> {
    @override
    final Iterable<Type> types = const [SpaceEdit, _$SpaceEdit];

    @override
    final String wireName = r'SpaceEdit';

    @override
    Iterable<Object?> serialize(Serializers serializers, SpaceEdit object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.website != null) {
            result
                ..add(r'website')
                ..add(serializers.serialize(object.website,
                    specifiedType: const FullType(String)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.addressText != null) {
            result
                ..add(r'addressText')
                ..add(serializers.serialize(object.addressText,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    SpaceEdit deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SpaceEditBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'website':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.website = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'addressText':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.addressText = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

