//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:nplone_api/src/model/transaction_item_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_list_dto.g.dart';

/// Страница с транзакциями
///
/// Properties:
/// * [transactions] - Транзакции
/// * [nextPageToken] - Токен следующей страницы
abstract class TransactionListDto implements Built<TransactionListDto, TransactionListDtoBuilder> {
    /// Транзакции
    @BuiltValueField(wireName: r'transactions')
    BuiltList<TransactionItemDto> get transactions;

    /// Токен следующей страницы
    @BuiltValueField(wireName: r'nextPageToken')
    String get nextPageToken;

    TransactionListDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TransactionListDtoBuilder b) => b;

    factory TransactionListDto([void updates(TransactionListDtoBuilder b)]) = _$TransactionListDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<TransactionListDto> get serializer => _$TransactionListDtoSerializer();
}

class _$TransactionListDtoSerializer implements StructuredSerializer<TransactionListDto> {
    @override
    final Iterable<Type> types = const [TransactionListDto, _$TransactionListDto];

    @override
    final String wireName = r'TransactionListDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, TransactionListDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'transactions')
            ..add(serializers.serialize(object.transactions,
                specifiedType: const FullType(BuiltList, [FullType(TransactionItemDto)])));
        result
            ..add(r'nextPageToken')
            ..add(serializers.serialize(object.nextPageToken,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    TransactionListDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TransactionListDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'transactions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(TransactionItemDto)])) as BuiltList<TransactionItemDto>;
                    result.transactions.replace(valueDes);
                    break;
                case r'nextPageToken':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.nextPageToken = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

