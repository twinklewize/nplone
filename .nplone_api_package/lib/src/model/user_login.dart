//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_login.g.dart';

/// Информация для входа в систему
///
/// Properties:
/// * [email] - E-Mail пользователя
/// * [password] - Пароль пользователя
abstract class UserLogin implements Built<UserLogin, UserLoginBuilder> {
    /// E-Mail пользователя
    @BuiltValueField(wireName: r'email')
    String get email;

    /// Пароль пользователя
    @BuiltValueField(wireName: r'password')
    String get password;

    UserLogin._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(UserLoginBuilder b) => b;

    factory UserLogin([void updates(UserLoginBuilder b)]) = _$UserLogin;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserLogin> get serializer => _$UserLoginSerializer();
}

class _$UserLoginSerializer implements StructuredSerializer<UserLogin> {
    @override
    final Iterable<Type> types = const [UserLogin, _$UserLogin];

    @override
    final String wireName = r'UserLogin';

    @override
    Iterable<Object?> serialize(Serializers serializers, UserLogin object,
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
        return result;
    }

    @override
    UserLogin deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserLoginBuilder();

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
            }
        }
        return result.build();
    }
}

