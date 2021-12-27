// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccountTypeEnum _$accountTypeEnum_UNDEFINED =
    const AccountTypeEnum._('UNDEFINED');
const AccountTypeEnum _$accountTypeEnum_CHECKING =
    const AccountTypeEnum._('CHECKING');
const AccountTypeEnum _$accountTypeEnum_SAVINGS =
    const AccountTypeEnum._('SAVINGS');
const AccountTypeEnum _$accountTypeEnum_CREDIT_CARD =
    const AccountTypeEnum._('CREDIT_CARD');

AccountTypeEnum _$accountTypeEnumValueOf(String name) {
  switch (name) {
    case 'UNDEFINED':
      return _$accountTypeEnum_UNDEFINED;
    case 'CHECKING':
      return _$accountTypeEnum_CHECKING;
    case 'SAVINGS':
      return _$accountTypeEnum_SAVINGS;
    case 'CREDIT_CARD':
      return _$accountTypeEnum_CREDIT_CARD;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AccountTypeEnum> _$accountTypeEnumValues =
    new BuiltSet<AccountTypeEnum>(const <AccountTypeEnum>[
  _$accountTypeEnum_UNDEFINED,
  _$accountTypeEnum_CHECKING,
  _$accountTypeEnum_SAVINGS,
  _$accountTypeEnum_CREDIT_CARD,
]);

const AccountCustomerSegmentEnum _$accountCustomerSegmentEnum_UNDEFINED =
    const AccountCustomerSegmentEnum._('UNDEFINED');
const AccountCustomerSegmentEnum _$accountCustomerSegmentEnum_PERSONAL =
    const AccountCustomerSegmentEnum._('PERSONAL');
const AccountCustomerSegmentEnum _$accountCustomerSegmentEnum_BUSINESS =
    const AccountCustomerSegmentEnum._('BUSINESS');

AccountCustomerSegmentEnum _$accountCustomerSegmentEnumValueOf(String name) {
  switch (name) {
    case 'UNDEFINED':
      return _$accountCustomerSegmentEnum_UNDEFINED;
    case 'PERSONAL':
      return _$accountCustomerSegmentEnum_PERSONAL;
    case 'BUSINESS':
      return _$accountCustomerSegmentEnum_BUSINESS;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AccountCustomerSegmentEnum> _$accountCustomerSegmentEnumValues =
    new BuiltSet<AccountCustomerSegmentEnum>(const <AccountCustomerSegmentEnum>[
  _$accountCustomerSegmentEnum_UNDEFINED,
  _$accountCustomerSegmentEnum_PERSONAL,
  _$accountCustomerSegmentEnum_BUSINESS,
]);

Serializer<AccountTypeEnum> _$accountTypeEnumSerializer =
    new _$AccountTypeEnumSerializer();
Serializer<AccountCustomerSegmentEnum> _$accountCustomerSegmentEnumSerializer =
    new _$AccountCustomerSegmentEnumSerializer();

class _$AccountTypeEnumSerializer
    implements PrimitiveSerializer<AccountTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UNDEFINED': 'UNDEFINED',
    'CHECKING': 'CHECKING',
    'SAVINGS': 'SAVINGS',
    'CREDIT_CARD': 'CREDIT_CARD',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UNDEFINED': 'UNDEFINED',
    'CHECKING': 'CHECKING',
    'SAVINGS': 'SAVINGS',
    'CREDIT_CARD': 'CREDIT_CARD',
  };

  @override
  final Iterable<Type> types = const <Type>[AccountTypeEnum];
  @override
  final String wireName = 'AccountTypeEnum';

  @override
  Object serialize(Serializers serializers, AccountTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountCustomerSegmentEnumSerializer
    implements PrimitiveSerializer<AccountCustomerSegmentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UNDEFINED': 'UNDEFINED',
    'PERSONAL': 'PERSONAL',
    'BUSINESS': 'BUSINESS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UNDEFINED': 'UNDEFINED',
    'PERSONAL': 'PERSONAL',
    'BUSINESS': 'BUSINESS',
  };

  @override
  final Iterable<Type> types = const <Type>[AccountCustomerSegmentEnum];
  @override
  final String wireName = 'AccountCustomerSegmentEnum';

  @override
  Object serialize(Serializers serializers, AccountCustomerSegmentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountCustomerSegmentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountCustomerSegmentEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Account extends Account {
  @override
  final String financialInstitutionId;
  @override
  final String id;
  @override
  final String name;
  @override
  final AccountTypeEnum type;
  @override
  final AccountBalance availableBalance;
  @override
  final AccountIdentifiers identifiers;
  @override
  final DateTime lastUpdateTime;
  @override
  final AccountCustomerSegmentEnum customerSegment;

  factory _$Account([void Function(AccountBuilder)? updates]) =>
      (new AccountBuilder()..update(updates)).build();

  _$Account._(
      {required this.financialInstitutionId,
      required this.id,
      required this.name,
      required this.type,
      required this.availableBalance,
      required this.identifiers,
      required this.lastUpdateTime,
      required this.customerSegment})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        financialInstitutionId, 'Account', 'financialInstitutionId');
    BuiltValueNullFieldError.checkNotNull(id, 'Account', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Account', 'name');
    BuiltValueNullFieldError.checkNotNull(type, 'Account', 'type');
    BuiltValueNullFieldError.checkNotNull(
        availableBalance, 'Account', 'availableBalance');
    BuiltValueNullFieldError.checkNotNull(
        identifiers, 'Account', 'identifiers');
    BuiltValueNullFieldError.checkNotNull(
        lastUpdateTime, 'Account', 'lastUpdateTime');
    BuiltValueNullFieldError.checkNotNull(
        customerSegment, 'Account', 'customerSegment');
  }

  @override
  Account rebuild(void Function(AccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBuilder toBuilder() => new AccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
        financialInstitutionId == other.financialInstitutionId &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        availableBalance == other.availableBalance &&
        identifiers == other.identifiers &&
        lastUpdateTime == other.lastUpdateTime &&
        customerSegment == other.customerSegment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, financialInstitutionId.hashCode),
                                id.hashCode),
                            name.hashCode),
                        type.hashCode),
                    availableBalance.hashCode),
                identifiers.hashCode),
            lastUpdateTime.hashCode),
        customerSegment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Account')
          ..add('financialInstitutionId', financialInstitutionId)
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('availableBalance', availableBalance)
          ..add('identifiers', identifiers)
          ..add('lastUpdateTime', lastUpdateTime)
          ..add('customerSegment', customerSegment))
        .toString();
  }
}

class AccountBuilder implements Builder<Account, AccountBuilder> {
  _$Account? _$v;

  String? _financialInstitutionId;
  String? get financialInstitutionId => _$this._financialInstitutionId;
  set financialInstitutionId(String? financialInstitutionId) =>
      _$this._financialInstitutionId = financialInstitutionId;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AccountTypeEnum? _type;
  AccountTypeEnum? get type => _$this._type;
  set type(AccountTypeEnum? type) => _$this._type = type;

  AccountBalanceBuilder? _availableBalance;
  AccountBalanceBuilder get availableBalance =>
      _$this._availableBalance ??= new AccountBalanceBuilder();
  set availableBalance(AccountBalanceBuilder? availableBalance) =>
      _$this._availableBalance = availableBalance;

  AccountIdentifiersBuilder? _identifiers;
  AccountIdentifiersBuilder get identifiers =>
      _$this._identifiers ??= new AccountIdentifiersBuilder();
  set identifiers(AccountIdentifiersBuilder? identifiers) =>
      _$this._identifiers = identifiers;

  DateTime? _lastUpdateTime;
  DateTime? get lastUpdateTime => _$this._lastUpdateTime;
  set lastUpdateTime(DateTime? lastUpdateTime) =>
      _$this._lastUpdateTime = lastUpdateTime;

  AccountCustomerSegmentEnum? _customerSegment;
  AccountCustomerSegmentEnum? get customerSegment => _$this._customerSegment;
  set customerSegment(AccountCustomerSegmentEnum? customerSegment) =>
      _$this._customerSegment = customerSegment;

  AccountBuilder() {
    Account._defaults(this);
  }

  AccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _financialInstitutionId = $v.financialInstitutionId;
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _availableBalance = $v.availableBalance.toBuilder();
      _identifiers = $v.identifiers.toBuilder();
      _lastUpdateTime = $v.lastUpdateTime;
      _customerSegment = $v.customerSegment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Account other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Account;
  }

  @override
  void update(void Function(AccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Account build() {
    _$Account _$result;
    try {
      _$result = _$v ??
          new _$Account._(
              financialInstitutionId: BuiltValueNullFieldError.checkNotNull(
                  financialInstitutionId, 'Account', 'financialInstitutionId'),
              id: BuiltValueNullFieldError.checkNotNull(id, 'Account', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'Account', 'name'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'Account', 'type'),
              availableBalance: availableBalance.build(),
              identifiers: identifiers.build(),
              lastUpdateTime: BuiltValueNullFieldError.checkNotNull(
                  lastUpdateTime, 'Account', 'lastUpdateTime'),
              customerSegment: BuiltValueNullFieldError.checkNotNull(
                  customerSegment, 'Account', 'customerSegment'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'availableBalance';
        availableBalance.build();
        _$failedField = 'identifiers';
        identifiers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Account', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
