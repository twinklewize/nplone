//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_account_details.g.dart';

/// Информация о счёте транзакции
///
/// Properties:
/// * [financialInstitutionId] - ID финансовой организации, предоставляющей счёт
/// * [iban] - Идентификатор счёта
abstract class TransactionAccountDetails implements Built<TransactionAccountDetails, TransactionAccountDetailsBuilder> {
    /// ID финансовой организации, предоставляющей счёт
    @BuiltValueField(wireName: r'financialInstitutionId')
    String get financialInstitutionId;

    /// Идентификатор счёта
    @BuiltValueField(wireName: r'iban')
    String get iban;

    TransactionAccountDetails._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TransactionAccountDetailsBuilder b) => b;

    factory TransactionAccountDetails([void updates(TransactionAccountDetailsBuilder b)]) = _$TransactionAccountDetails;

    @BuiltValueSerializer(custom: true)
    static Serializer<TransactionAccountDetails> get serializer => _$TransactionAccountDetailsSerializer();
}

class _$TransactionAccountDetailsSerializer implements StructuredSerializer<TransactionAccountDetails> {
    @override
    final Iterable<Type> types = const [TransactionAccountDetails, _$TransactionAccountDetails];

    @override
    final String wireName = r'TransactionAccountDetails';

    @override
    Iterable<Object?> serialize(Serializers serializers, TransactionAccountDetails object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'financialInstitutionId')
            ..add(serializers.serialize(object.financialInstitutionId,
                specifiedType: const FullType(String)));
        result
            ..add(r'iban')
            ..add(serializers.serialize(object.iban,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    TransactionAccountDetails deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TransactionAccountDetailsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'financialInstitutionId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.financialInstitutionId = valueDes;
                    break;
                case r'iban':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.iban = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

