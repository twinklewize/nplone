//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_info.g.dart';

/// TokenInfo
///
/// Properties:
/// * [accessToken] - JWT ключ доступа к системе
/// * [userId] - ID пользователя, под которым произошёл вход
abstract class TokenInfo implements Built<TokenInfo, TokenInfoBuilder> {
    /// JWT ключ доступа к системе
    @BuiltValueField(wireName: r'accessToken')
    String get accessToken;

    /// ID пользователя, под которым произошёл вход
    @BuiltValueField(wireName: r'userId')
    String get userId;

    TokenInfo._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TokenInfoBuilder b) => b;

    factory TokenInfo([void updates(TokenInfoBuilder b)]) = _$TokenInfo;

    @BuiltValueSerializer(custom: true)
    static Serializer<TokenInfo> get serializer => _$TokenInfoSerializer();
}

class _$TokenInfoSerializer implements StructuredSerializer<TokenInfo> {
    @override
    final Iterable<Type> types = const [TokenInfo, _$TokenInfo];

    @override
    final String wireName = r'TokenInfo';

    @override
    Iterable<Object?> serialize(Serializers serializers, TokenInfo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'accessToken')
            ..add(serializers.serialize(object.accessToken,
                specifiedType: const FullType(String)));
        result
            ..add(r'userId')
            ..add(serializers.serialize(object.userId,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    TokenInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TokenInfoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'accessToken':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.accessToken = valueDes;
                    break;
                case r'userId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.userId = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

