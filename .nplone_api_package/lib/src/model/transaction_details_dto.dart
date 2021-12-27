//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:nplone_api/src/model/transaction_account_details.dart';
import 'package:nplone_api/src/model/transaction_view_configuration.dart';
import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/merchant.dart';
import 'package:nplone_api/src/model/account_balance.dart';
import 'package:nplone_api/src/model/user_summary_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_details_dto.g.dart';

/// TransactionDetailsDto
///
/// Properties:
/// * [id] - ID транзакции
/// * [amount] 
/// * [bookedAt] - Когда транзакция была подтверждена банком
/// * [description] - Описание
/// * [merchant] 
/// * [type] - Тип транзакции
/// * [accountDetails] 
/// * [originator] 
/// * [published] - Опубликована
/// * [publisher] 
/// * [viewConfiguration] 
abstract class TransactionDetailsDto implements Built<TransactionDetailsDto, TransactionDetailsDtoBuilder> {
    /// ID транзакции
    @BuiltValueField(wireName: r'id')
    String get id;

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
    TransactionDetailsDtoTypeEnum? get type;
    // enum typeEnum {  UNDEFINED,  CREDIT_CARD,  PAYMENT,  WITHDRAWAL,  DEFAULT,  TRANSFER,  };

    @BuiltValueField(wireName: r'accountDetails')
    TransactionAccountDetails? get accountDetails;

    @BuiltValueField(wireName: r'originator')
    UserSummaryDto? get originator;

    /// Опубликована
    @BuiltValueField(wireName: r'published')
    bool get published;

    @BuiltValueField(wireName: r'publisher')
    UserSummaryDto? get publisher;

    @BuiltValueField(wireName: r'viewConfiguration')
    TransactionViewConfiguration? get viewConfiguration;

    TransactionDetailsDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(TransactionDetailsDtoBuilder b) => b;

    factory TransactionDetailsDto([void updates(TransactionDetailsDtoBuilder b)]) = _$TransactionDetailsDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<TransactionDetailsDto> get serializer => _$TransactionDetailsDtoSerializer();
}

class _$TransactionDetailsDtoSerializer implements StructuredSerializer<TransactionDetailsDto> {
    @override
    final Iterable<Type> types = const [TransactionDetailsDto, _$TransactionDetailsDto];

    @override
    final String wireName = r'TransactionDetailsDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, TransactionDetailsDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
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
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(TransactionDetailsDtoTypeEnum)));
        }
        if (object.accountDetails != null) {
            result
                ..add(r'accountDetails')
                ..add(serializers.serialize(object.accountDetails,
                    specifiedType: const FullType(TransactionAccountDetails)));
        }
        if (object.originator != null) {
            result
                ..add(r'originator')
                ..add(serializers.serialize(object.originator,
                    specifiedType: const FullType(UserSummaryDto)));
        }
        result
            ..add(r'published')
            ..add(serializers.serialize(object.published,
                specifiedType: const FullType(bool)));
        if (object.publisher != null) {
            result
                ..add(r'publisher')
                ..add(serializers.serialize(object.publisher,
                    specifiedType: const FullType(UserSummaryDto)));
        }
        if (object.viewConfiguration != null) {
            result
                ..add(r'viewConfiguration')
                ..add(serializers.serialize(object.viewConfiguration,
                    specifiedType: const FullType(TransactionViewConfiguration)));
        }
        return result;
    }

    @override
    TransactionDetailsDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = TransactionDetailsDtoBuilder();

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
                        specifiedType: const FullType(TransactionDetailsDtoTypeEnum)) as TransactionDetailsDtoTypeEnum;
                    result.type = valueDes;
                    break;
                case r'accountDetails':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(TransactionAccountDetails)) as TransactionAccountDetails;
                    result.accountDetails.replace(valueDes);
                    break;
                case r'originator':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserSummaryDto)) as UserSummaryDto;
                    result.originator.replace(valueDes);
                    break;
                case r'published':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.published = valueDes;
                    break;
                case r'publisher':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserSummaryDto)) as UserSummaryDto;
                    result.publisher.replace(valueDes);
                    break;
                case r'viewConfiguration':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(TransactionViewConfiguration)) as TransactionViewConfiguration;
                    result.viewConfiguration.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

class TransactionDetailsDtoTypeEnum extends EnumClass {

  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'UNDEFINED')
  static const TransactionDetailsDtoTypeEnum UNDEFINED = _$transactionDetailsDtoTypeEnum_UNDEFINED;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'CREDIT_CARD')
  static const TransactionDetailsDtoTypeEnum CREDIT_CARD = _$transactionDetailsDtoTypeEnum_CREDIT_CARD;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'PAYMENT')
  static const TransactionDetailsDtoTypeEnum PAYMENT = _$transactionDetailsDtoTypeEnum_PAYMENT;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'WITHDRAWAL')
  static const TransactionDetailsDtoTypeEnum WITHDRAWAL = _$transactionDetailsDtoTypeEnum_WITHDRAWAL;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'DEFAULT')
  static const TransactionDetailsDtoTypeEnum DEFAULT = _$transactionDetailsDtoTypeEnum_DEFAULT;
  /// Тип транзакции
  @BuiltValueEnumConst(wireName: r'TRANSFER')
  static const TransactionDetailsDtoTypeEnum TRANSFER = _$transactionDetailsDtoTypeEnum_TRANSFER;

  static Serializer<TransactionDetailsDtoTypeEnum> get serializer => _$transactionDetailsDtoTypeEnumSerializer;

  const TransactionDetailsDtoTypeEnum._(String name): super(name);

  static BuiltSet<TransactionDetailsDtoTypeEnum> get values => _$transactionDetailsDtoTypeEnumValues;
  static TransactionDetailsDtoTypeEnum valueOf(String name) => _$transactionDetailsDtoTypeEnumValueOf(name);
}

