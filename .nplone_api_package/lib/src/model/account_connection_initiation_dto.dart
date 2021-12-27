//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_connection_initiation_dto.g.dart';

/// Информация для flow добавления счётов
///
/// Properties:
/// * [redirectUri] - URI для начала добавления счёта
abstract class AccountConnectionInitiationDto implements Built<AccountConnectionInitiationDto, AccountConnectionInitiationDtoBuilder> {
    /// URI для начала добавления счёта
    @BuiltValueField(wireName: r'redirectUri')
    String? get redirectUri;

    AccountConnectionInitiationDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccountConnectionInitiationDtoBuilder b) => b;

    factory AccountConnectionInitiationDto([void updates(AccountConnectionInitiationDtoBuilder b)]) = _$AccountConnectionInitiationDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountConnectionInitiationDto> get serializer => _$AccountConnectionInitiationDtoSerializer();
}

class _$AccountConnectionInitiationDtoSerializer implements StructuredSerializer<AccountConnectionInitiationDto> {
    @override
    final Iterable<Type> types = const [AccountConnectionInitiationDto, _$AccountConnectionInitiationDto];

    @override
    final String wireName = r'AccountConnectionInitiationDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, AccountConnectionInitiationDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.redirectUri != null) {
            result
                ..add(r'redirectUri')
                ..add(serializers.serialize(object.redirectUri,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AccountConnectionInitiationDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountConnectionInitiationDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'redirectUri':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.redirectUri = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

