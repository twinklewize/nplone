//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'space.g.dart';

/// Информация о пространстве
///
/// Properties:
/// * [primaryAccount] - ID основного счёта
/// * [name] - Имя пространства
/// * [website] - Вебсайт
/// * [description] - Описание
/// * [addressText] - Адрес
/// * [icon] - URL адреса
/// * [banner] - URL баннера
abstract class Space implements Built<Space, SpaceBuilder> {
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

    /// URL адреса
    @BuiltValueField(wireName: r'icon')
    String get icon;

    /// URL баннера
    @BuiltValueField(wireName: r'banner')
    String get banner;

    Space._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SpaceBuilder b) => b;

    factory Space([void updates(SpaceBuilder b)]) = _$Space;

    @BuiltValueSerializer(custom: true)
    static Serializer<Space> get serializer => _$SpaceSerializer();
}

class _$SpaceSerializer implements StructuredSerializer<Space> {
    @override
    final Iterable<Type> types = const [Space, _$Space];

    @override
    final String wireName = r'Space';

    @override
    Iterable<Object?> serialize(Serializers serializers, Space object,
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
        result
            ..add(r'icon')
            ..add(serializers.serialize(object.icon,
                specifiedType: const FullType(String)));
        result
            ..add(r'banner')
            ..add(serializers.serialize(object.banner,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    Space deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SpaceBuilder();

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
                case r'icon':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.icon = valueDes;
                    break;
                case r'banner':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.banner = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

