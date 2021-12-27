//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'google_token.g.dart';

/// GoogleToken
///
/// Properties:
/// * [token] - Токен
/// * [country] - Страна
abstract class GoogleToken implements Built<GoogleToken, GoogleTokenBuilder> {
    /// Токен
    @BuiltValueField(wireName: r'token')
    String get token;

    /// Страна
    @BuiltValueField(wireName: r'country')
    String get country;

    GoogleToken._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(GoogleTokenBuilder b) => b;

    factory GoogleToken([void updates(GoogleTokenBuilder b)]) = _$GoogleToken;

    @BuiltValueSerializer(custom: true)
    static Serializer<GoogleToken> get serializer => _$GoogleTokenSerializer();
}

class _$GoogleTokenSerializer implements StructuredSerializer<GoogleToken> {
    @override
    final Iterable<Type> types = const [GoogleToken, _$GoogleToken];

    @override
    final String wireName = r'GoogleToken';

    @override
    Iterable<Object?> serialize(Serializers serializers, GoogleToken object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'token')
            ..add(serializers.serialize(object.token,
                specifiedType: const FullType(String)));
        result
            ..add(r'country')
            ..add(serializers.serialize(object.country,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    GoogleToken deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GoogleTokenBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'token':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.token = valueDes;
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

