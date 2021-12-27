//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'space_create.g.dart';

/// Данные
///
/// Properties:
/// * [primaryAccount] - ID основного счёта
/// * [name] - Имя пространства
/// * [website] - Вебсайт
/// * [description] - Описание
/// * [addressText] - Адрес
abstract class SpaceCreate implements Built<SpaceCreate, SpaceCreateBuilder> {
    /// ID основного счёта
    @BuiltValueField(wireName: r'primaryAccount')
    String get primaryAccount;

    /// Имя пространства
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Вебсайт
    @BuiltValueField(wireName: r'website')
    String? get website;

    /// Описание
    @BuiltValueField(wireName: r'description')
    String? get description;

    /// Адрес
    @BuiltValueField(wireName: r'addressText')
    String? get addressText;

    SpaceCreate._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SpaceCreateBuilder b) => b;

    factory SpaceCreate([void updates(SpaceCreateBuilder b)]) = _$SpaceCreate;

    @BuiltValueSerializer(custom: true)
    static Serializer<SpaceCreate> get serializer => _$SpaceCreateSerializer();
}

class _$SpaceCreateSerializer implements StructuredSerializer<SpaceCreate> {
    @override
    final Iterable<Type> types = const [SpaceCreate, _$SpaceCreate];

    @override
    final String wireName = r'SpaceCreate';

    @override
    Iterable<Object?> serialize(Serializers serializers, SpaceCreate object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'primaryAccount')
            ..add(serializers.serialize(object.primaryAccount,
                specifiedType: const FullType(String)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
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
    SpaceCreate deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SpaceCreateBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'primaryAccount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.primaryAccount = valueDes;
                    break;
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

