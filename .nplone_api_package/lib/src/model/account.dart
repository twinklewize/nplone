//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/account_balance.dart';
import 'package:nplone_api/src/model/account_identifiers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account.g.dart';

/// Счёт пользователя
///
/// Properties:
/// * [financialInstitutionId] - ID финансовой организации, предоставляющей счёт
/// * [id] - ID счёта
/// * [name] - Название счёта
/// * [type] - Тип счёта
/// * [availableBalance] 
/// * [identifiers] 
/// * [lastUpdateTime] - Время последнего обновления
/// * [customerSegment] - Сегмент счёта
abstract class Account implements Built<Account, AccountBuilder> {
    /// ID финансовой организации, предоставляющей счёт
    @BuiltValueField(wireName: r'financialInstitutionId')
    String get financialInstitutionId;

    /// ID счёта
    @BuiltValueField(wireName: r'id')
    String get id;

    /// Название счёта
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Тип счёта
    @BuiltValueField(wireName: r'type')
    AccountTypeEnum get type;
    // enum typeEnum {  UNDEFINED,  CHECKING,  SAVINGS,  CREDIT_CARD,  };

    @BuiltValueField(wireName: r'availableBalance')
    AccountBalance get availableBalance;

    @BuiltValueField(wireName: r'identifiers')
    AccountIdentifiers get identifiers;

    /// Время последнего обновления
    @BuiltValueField(wireName: r'lastUpdateTime')
    DateTime get lastUpdateTime;

    /// Сегмент счёта
    @BuiltValueField(wireName: r'customerSegment')
    AccountCustomerSegmentEnum get customerSegment;
    // enum customerSegmentEnum {  UNDEFINED,  PERSONAL,  BUSINESS,  };

    Account._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccountBuilder b) => b;

    factory Account([void updates(AccountBuilder b)]) = _$Account;

    @BuiltValueSerializer(custom: true)
    static Serializer<Account> get serializer => _$AccountSerializer();
}

class _$AccountSerializer implements StructuredSerializer<Account> {
    @override
    final Iterable<Type> types = const [Account, _$Account];

    @override
    final String wireName = r'Account';

    @override
    Iterable<Object?> serialize(Serializers serializers, Account object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'financialInstitutionId')
            ..add(serializers.serialize(object.financialInstitutionId,
                specifiedType: const FullType(String)));
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'name')
            ..add(serializers.serialize(object.name,
                specifiedType: const FullType(String)));
        result
            ..add(r'type')
            ..add(serializers.serialize(object.type,
                specifiedType: const FullType(AccountTypeEnum)));
        result
            ..add(r'availableBalance')
            ..add(serializers.serialize(object.availableBalance,
                specifiedType: const FullType(AccountBalance)));
        result
            ..add(r'identifiers')
            ..add(serializers.serialize(object.identifiers,
                specifiedType: const FullType(AccountIdentifiers)));
        result
            ..add(r'lastUpdateTime')
            ..add(serializers.serialize(object.lastUpdateTime,
                specifiedType: const FullType(DateTime)));
        result
            ..add(r'customerSegment')
            ..add(serializers.serialize(object.customerSegment,
                specifiedType: const FullType(AccountCustomerSegmentEnum)));
        return result;
    }

    @override
    Account deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountBuilder();

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
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AccountTypeEnum)) as AccountTypeEnum;
                    result.type = valueDes;
                    break;
                case r'availableBalance':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AccountBalance)) as AccountBalance;
                    result.availableBalance.replace(valueDes);
                    break;
                case r'identifiers':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AccountIdentifiers)) as AccountIdentifiers;
                    result.identifiers.replace(valueDes);
                    break;
                case r'lastUpdateTime':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.lastUpdateTime = valueDes;
                    break;
                case r'customerSegment':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AccountCustomerSegmentEnum)) as AccountCustomerSegmentEnum;
                    result.customerSegment = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

class AccountTypeEnum extends EnumClass {

  /// Тип счёта
  @BuiltValueEnumConst(wireName: r'UNDEFINED')
  static const AccountTypeEnum UNDEFINED = _$accountTypeEnum_UNDEFINED;
  /// Тип счёта
  @BuiltValueEnumConst(wireName: r'CHECKING')
  static const AccountTypeEnum CHECKING = _$accountTypeEnum_CHECKING;
  /// Тип счёта
  @BuiltValueEnumConst(wireName: r'SAVINGS')
  static const AccountTypeEnum SAVINGS = _$accountTypeEnum_SAVINGS;
  /// Тип счёта
  @BuiltValueEnumConst(wireName: r'CREDIT_CARD')
  static const AccountTypeEnum CREDIT_CARD = _$accountTypeEnum_CREDIT_CARD;

  static Serializer<AccountTypeEnum> get serializer => _$accountTypeEnumSerializer;

  const AccountTypeEnum._(String name): super(name);

  static BuiltSet<AccountTypeEnum> get values => _$accountTypeEnumValues;
  static AccountTypeEnum valueOf(String name) => _$accountTypeEnumValueOf(name);
}

class AccountCustomerSegmentEnum extends EnumClass {

  /// Сегмент счёта
  @BuiltValueEnumConst(wireName: r'UNDEFINED')
  static const AccountCustomerSegmentEnum UNDEFINED = _$accountCustomerSegmentEnum_UNDEFINED;
  /// Сегмент счёта
  @BuiltValueEnumConst(wireName: r'PERSONAL')
  static const AccountCustomerSegmentEnum PERSONAL = _$accountCustomerSegmentEnum_PERSONAL;
  /// Сегмент счёта
  @BuiltValueEnumConst(wireName: r'BUSINESS')
  static const AccountCustomerSegmentEnum BUSINESS = _$accountCustomerSegmentEnum_BUSINESS;

  static Serializer<AccountCustomerSegmentEnum> get serializer => _$accountCustomerSegmentEnumSerializer;

  const AccountCustomerSegmentEnum._(String name): super(name);

  static BuiltSet<AccountCustomerSegmentEnum> get values => _$accountCustomerSegmentEnumValues;
  static AccountCustomerSegmentEnum valueOf(String name) => _$accountCustomerSegmentEnumValueOf(name);
}

