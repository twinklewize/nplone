//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_identifiers.g.dart';

/// Идентификаторы счёта
///
/// Properties:
/// * [iban] - IBAN
/// * [bic] - BIC
abstract class AccountIdentifiers implements Built<AccountIdentifiers, AccountIdentifiersBuilder> {
    /// IBAN
    @BuiltValueField(wireName: r'iban')
    String? get iban;

    /// BIC
    @BuiltValueField(wireName: r'bic')
    String? get bic;

    AccountIdentifiers._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccountIdentifiersBuilder b) => b;

    factory AccountIdentifiers([void updates(AccountIdentifiersBuilder b)]) = _$AccountIdentifiers;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountIdentifiers> get serializer => _$AccountIdentifiersSerializer();
}

class _$AccountIdentifiersSerializer implements StructuredSerializer<AccountIdentifiers> {
    @override
    final Iterable<Type> types = const [AccountIdentifiers, _$AccountIdentifiers];

    @override
    final String wireName = r'AccountIdentifiers';

    @override
    Iterable<Object?> serialize(Serializers serializers, AccountIdentifiers object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.iban != null) {
            result
                ..add(r'iban')
                ..add(serializers.serialize(object.iban,
                    specifiedType: const FullType(String)));
        }
        if (object.bic != null) {
            result
                ..add(r'bic')
                ..add(serializers.serialize(object.bic,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AccountIdentifiers deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountIdentifiersBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'iban':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.iban = valueDes;
                    break;
                case r'bic':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.bic = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

