//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/merchant.dart';
import 'package:nplone_api/src/model/account_balance.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_item_dto.g.dart';

/// Транзакция
///
/// Properties:
/// * [id] - ID транзакции
/// * [accountId] - ID счёта
/// * [amount] 
/// * [bookedAt] - Когда транзакция была подтверждена банком
/// * [description] - Описание
/// * [merchant] 
/// * [type] - Тип транзакции
/// * [posted] - Опубликована ли транзакция
/// * [comments] - Количество комментариев к транзакции
/// * [files] - Количество файлов к транзакции
abstract class TransactionItemDto implements Built<TransactionItemDto, TransactionItemDtoBuilder> {
    /// ID транзакции
    @BuiltValueField(wireName: r'id')
    String get id;

    /// ID счёта
    @BuiltValueField(wireName: r'accountId')
    String get accountId;

    @BuiltValueField(wireName: r'amount')
    AccountBalance get amount;

    /// Когда транзакция была подтверждена банком
    @BuiltValueField(wireName: r'bookedAt')
    DateTime get bookedAt;

    /// Описание
    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'merchant')
    Merchant? get merchant;

    /// Тип транзакции
    @BuiltValueField(wireName: r'type')
    TransactionItemDtoTypeEnum get type;
    // enum typeEnum {  UNDEFINED,  CREDIT_CARD,  PAYMENT,  WITHDRAWAL,  DEFAULT,  TRANSFER,  };

    /// Опубликована ли транзакция
    @BuiltValueField(wireName: r'posted')
    bool get posted;

    /// Количество комментариев к транзакции
    @BuiltValueField(wireName: r'comments')
    int get comments;

    /// Количество файлов к транзакции
    @BuiltValueField(wireName: r'files')
    int get files;

    TransactionItemDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TransactionItemDtoBuilder b) => b;

    factory TransactionItemDto([void updates(TransactionItemDtoBuilder b)]) = _$TransactionItemDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<TransactionItemDto> get serializer => _$TransactionItemDtoSerializer();
}

class _$TransactionItemDtoSerializer implements StructuredSerializer<TransactionItemDto> {
    @override
    final Iterable<Type> types = const [TransactionItemDto, _$TransactionItemDto];

    @override
    final String wireName = r'TransactionItemDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, TransactionItemDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'accountId')
            ..add(serializers.serialize(object.accountId,
                specifiedType: const FullType(String)));
        result
            ..add(r'amount')
            ..add(serializers.serialize(object.amount,
                specifiedType: const FullType(AccountBalance)));
        result
            ..add(r'bookedAt')
            ..add(serializers.serialize(object.bookedAt,
                specifiedType: const FullType(DateTime)));
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.merchant != null) {
            result
                ..add(r'merchant')
                ..add(serializers.serialize(object.merchant,
                    specifiedType: const FullType(Merchant)));
        }
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(TransactionItemDtoTypeEnum)));
        result
            ..add(r'posted')
            ..add(serializers.serialize(object.posted,
                specifiedType: const FullType(bool)));
        result
            ..add(r'comments')
            ..add(serializers.serialize(object.comments,
                specifiedType: const FullType(int)));
        result
            ..add(r'files')
            ..add(serializers.serialize(object.files,
                specifiedType: const FullType(int)));
        return result;
    }

    @override
    TransactionItemDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TransactionItemDtoBuilder();

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
                case r'accountId':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.accountId = valueDes;
                    break;
                case r'amount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AccountBalance)) as AccountBalance;
                    result.amount.replace(valueDes);
                    break;
                case r'bookedAt':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.bookedAt = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'merchant':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Merchant)) as Merchant;
                    result.merchant.replace(valueDes);
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(TransactionItemDtoTypeEnum)) as TransactionItemDtoTypeEnum;
                    result.type = valueDes;
                    break;
                case r'posted':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.posted = valueDes;
                    break;
                case r'comments':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.comments = valueDes;
                    break;
                case r'files':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.files = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

class TransactionItemDtoTypeEnum extends EnumClass {

  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'UNDEFINED')
  static const TransactionItemDtoTypeEnum UNDEFINED = _$transactionItemDtoTypeEnum_UNDEFINED;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'CREDIT_CARD')
  static const TransactionItemDtoTypeEnum CREDIT_CARD = _$transactionItemDtoTypeEnum_CREDIT_CARD;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'PAYMENT')
  static const TransactionItemDtoTypeEnum PAYMENT = _$transactionItemDtoTypeEnum_PAYMENT;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'WITHDRAWAL')
  static const TransactionItemDtoTypeEnum WITHDRAWAL = _$transactionItemDtoTypeEnum_WITHDRAWAL;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'DEFAULT')
  static const TransactionItemDtoTypeEnum DEFAULT = _$transactionItemDtoTypeEnum_DEFAULT;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'TRANSFER')
  static const TransactionItemDtoTypeEnum TRANSFER = _$transactionItemDtoTypeEnum_TRANSFER;

  static Serializer<TransactionItemDtoTypeEnum> get serializer => _$transactionItemDtoTypeEnumSerializer;

  const TransactionItemDtoTypeEnum._(String name): super(name);

  static BuiltSet<TransactionItemDtoTypeEnum> get values => _$transactionItemDtoTypeEnumValues;
  static TransactionItemDtoTypeEnum valueOf(String name) => _$transactionItemDtoTypeEnumValueOf(name);
}

