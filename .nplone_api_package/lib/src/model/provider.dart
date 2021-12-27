//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'provider.g.dart';

/// Провайдер банковских данных
///
/// Properties:
/// * [currency] - Валюта провайдера
/// * [displayDescription] - Описание
/// * [displayName] - Имя
/// * [financialInstitutionId] - ID финансовой организации
/// * [financialInstitutionName] - Имя финансовой организации
/// * [groupDisplayName] - Имя группы провайдеров
/// * [loginHeaderColour] - Цвет хедера при логине
/// * [market] - Рынок
/// * [uid] - UID провайдера
/// * [popular] - Популярен ли провайдер
/// * [bannerImage] - Ссылка на баннер провайдера
/// * [iconImage] - Ссылка на иконку провайдера
abstract class Provider implements Built<Provider, ProviderBuilder> {
    /// Валюта провайдера
    @BuiltValueField(wireName: r'currency')
    String get currency;

    /// Описание
    @BuiltValueField(wireName: r'displayDescription')
    String? get displayDescription;

    /// Имя
    @BuiltValueField(wireName: r'displayName')
    String? get displayName;

    /// ID финансовой организации
    @BuiltValueField(wireName: r'financialInstitutionId')
    String get financialInstitutionId;

    /// Имя финансовой организации
    @BuiltValueField(wireName: r'financialInstitutionName')
    String get financialInstitutionName;

    /// Имя группы провайдеров
    @BuiltValueField(wireName: r'groupDisplayName')
    String get groupDisplayName;

    /// Цвет хедера при логине
    @BuiltValueField(wireName: r'loginHeaderColour')
    String get loginHeaderColour;

    /// Рынок
    @BuiltValueField(wireName: r'market')
    String get market;

    /// UID провайдера
    @BuiltValueField(wireName: r'uid')
    String get uid;

    /// Популярен ли провайдер
    @BuiltValueField(wireName: r'popular')
    bool get popular;

    /// Ссылка на баннер провайдера
    @BuiltValueField(wireName: r'bannerImage')
    String get bannerImage;

    /// Ссылка на иконку провайдера
    @BuiltValueField(wireName: r'iconImage')
    String get iconImage;

    Provider._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ProviderBuilder b) => b;

    factory Provider([void updates(ProviderBuilder b)]) = _$Provider;

    @BuiltValueSerializer(custom: true)
    static Serializer<Provider> get serializer => _$ProviderSerializer();
}

class _$ProviderSerializer implements StructuredSerializer<Provider> {
    @override
    final Iterable<Type> types = const [Provider, _$Provider];

    @override
    final String wireName = r'Provider';

    @override
    Iterable<Object?> serialize(Serializers serializers, Provider object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'currency')
            ..add(serializers.serialize(object.currency,
                specifiedType: const FullType(String)));
        if (object.displayDescription != null) {
            result
                ..add(r'displayDescription')
                ..add(serializers.serialize(object.displayDescription,
                    specifiedType: const FullType(String)));
        }
        if (object.displayName != null) {
            result
                ..add(r'displayName')
                ..add(serializers.serialize(object.displayName,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'financialInstitutionId')
            ..add(serializers.serialize(object.financialInstitutionId,
                specifiedType: const FullType(String)));
        result
            ..add(r'financialInstitutionName')
            ..add(serializers.serialize(object.financialInstitutionName,
                specifiedType: const FullType(String)));
        result
            ..add(r'groupDisplayName')
            ..add(serializers.serialize(object.groupDisplayName,
                specifiedType: const FullType(String)));
        result
            ..add(r'loginHeaderColour')
            ..add(serializers.serialize(object.loginHeaderColour,
                specifiedType: const FullType(String)));
        result
            ..add(r'market')
            ..add(serializers.serialize(object.market,
                specifiedType: const FullType(String)));
        result
            ..add(r'uid')
            ..add(serializers.serialize(object.uid,
                specifiedType: const FullType(String)));
        result
            ..add(r'popular')
            ..add(serializers.serialize(object.popular,
                specifiedType: const FullType(bool)));
        result
            ..add(r'bannerImage')
            ..add(serializers.serialize(object.bannerImage,
                specifiedType: const FullType(String)));
        result
            ..add(r'iconImage')
            ..add(serializers.serialize(object.iconImage,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    Provider deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ProviderBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'currency':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.currency = valueDes;
                    break;
                case r'displayDescription':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.displayDescription = valueDes;
                    break;
                case r'displayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.displayName = valueDes;
                    break;
                case r'financialInstitutionId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.financialInstitutionId = valueDes;
                    break;
                case r'financialInstitutionName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.financialInstitutionName = valueDes;
                    break;
                case r'groupDisplayName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.groupDisplayName = valueDes;
                    break;
                case r'loginHeaderColour':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.loginHeaderColour = valueDes;
                    break;
                case r'market':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.market = valueDes;
                    break;
                case r'uid':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.uid = valueDes;
                    break;
                case r'popular':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.popular = valueDes;
                    break;
                case r'bannerImage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bannerImage = valueDes;
                    break;
                case r'iconImage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.iconImage = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

