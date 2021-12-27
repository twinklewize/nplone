//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_register.g.dart';

/// Информация для регистрации пользователя
///
/// Properties:
/// * [email] - E-Mail пользователя
/// * [password] - Пароль пользователя
/// * [country] - Страна пользователя (согласно ISO 3166-1)
abstract class UserRegister implements Built<UserRegister, UserRegisterBuilder> {
    /// E-Mail пользователя
    @BuiltValueField(wireName: r'email')
    String get email;

    /// Пароль пользователя
    @BuiltValueField(wireName: r'password')
    String get password;

    /// Страна пользователя (согласно ISO 3166-1)
    @BuiltValueField(wireName: r'country')
    String get country;

    UserRegister._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserRegisterBuilder b) => b;

    factory UserRegister([void updates(UserRegisterBuilder b)]) = _$UserRegister;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserRegister> get serializer => _$UserRegisterSerializer();
}

class _$UserRegisterSerializer implements StructuredSerializer<UserRegister> {
    @override
    final Iterable<Type> types = const [UserRegister, _$UserRegister];

    @override
    final String wireName = r'UserRegister';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserRegister object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'email')
            ..add(serializers.serialize(object.email,
                specifiedType: const FullType(String)));
        result
            ..add(r'password')
            ..add(serializers.serialize(object.password,
                specifiedType: const FullType(String)));
        result
            ..add(r'country')
            ..add(serializers.serialize(object.country,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    UserRegister deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserRegisterBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'email':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.email = valueDes;
                    break;
                case r'password':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.password = valueDes;
                    break;
                case r'country':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.country = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

