//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info.g.dart';

/// Информация о пользователе
///
/// Properties:
/// * [id] - ID пользователя
/// * [email] - E-Mail пользователя
/// * [name] - ФИО пользователя
/// * [givenName] - Имя пользователя
/// * [familyName] - Фамилия пользователя
abstract class UserInfo implements Built<UserInfo, UserInfoBuilder> {
    /// ID пользователя
    @BuiltValueField(wireName: r'id')
    String get id;

    /// E-Mail пользователя
    @BuiltValueField(wireName: r'email')
    String get email;

    /// ФИО пользователя
    @BuiltValueField(wireName: r'name')
    String? get name;

    /// Имя пользователя
    @BuiltValueField(wireName: r'givenName')
    String? get givenName;

    /// Фамилия пользователя
    @BuiltValueField(wireName: r'familyName')
    String? get familyName;

    UserInfo._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserInfoBuilder b) => b;

    factory UserInfo([void updates(UserInfoBuilder b)]) = _$UserInfo;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserInfo> get serializer => _$UserInfoSerializer();
}

class _$UserInfoSerializer implements StructuredSerializer<UserInfo> {
    @override
    final Iterable<Type> types = const [UserInfo, _$UserInfo];

    @override
    final String wireName = r'UserInfo';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserInfo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'email')
            ..add(serializers.serialize(object.email,
                specifiedType: const FullType(String)));
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.givenName != null) {
            result
                ..add(r'givenName')
                ..add(serializers.serialize(object.givenName,
                    specifiedType: const FullType(String)));
        }
        if (object.familyName != null) {
            result
                ..add(r'familyName')
                ..add(serializers.serialize(object.familyName,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    UserInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserInfoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.email = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'givenName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.givenName = valueDes;
                    break;
                case r'familyName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.familyName = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

