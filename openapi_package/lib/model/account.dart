//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Account {
  /// Returns a new [Account] instance.
  Account({
    @required this.financialInstitutionId,
    @required this.id,
    @required this.name,
    @required this.type,
    @required this.availableBalance,
    @required this.identifiers,
    @required this.lastUpdateTime,
    @required this.customerSegment,
  });

  /// ID финансовой организации, предоставляющей счёт
  String financialInstitutionId;

  /// ID счёта
  String id;

  /// Название счёта
  String name;

  /// Тип счёта
  AccountTypeEnum type;

  AccountBalance availableBalance;

  AccountIdentifiers identifiers;

  /// Время последнего обновления
  DateTime lastUpdateTime;

  /// Сегмент счёта
  AccountCustomerSegmentEnum customerSegment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Account &&
     other.financialInstitutionId == financialInstitutionId &&
     other.id == id &&
     other.name == name &&
     other.type == type &&
     other.availableBalance == availableBalance &&
     other.identifiers == identifiers &&
     other.lastUpdateTime == lastUpdateTime &&
     other.customerSegment == customerSegment;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (financialInstitutionId == null ? 0 : financialInstitutionId.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (availableBalance == null ? 0 : availableBalance.hashCode) +
    (identifiers == null ? 0 : identifiers.hashCode) +
    (lastUpdateTime == null ? 0 : lastUpdateTime.hashCode) +
    (customerSegment == null ? 0 : customerSegment.hashCode);

  @override
  String toString() => 'Account[financialInstitutionId=$financialInstitutionId, id=$id, name=$name, type=$type, availableBalance=$availableBalance, identifiers=$identifiers, lastUpdateTime=$lastUpdateTime, customerSegment=$customerSegment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'financialInstitutionId'] = financialInstitutionId;
      json[r'id'] = id;
      json[r'name'] = name;
      json[r'type'] = type;
      json[r'availableBalance'] = availableBalance;
      json[r'identifiers'] = identifiers;
      json[r'lastUpdateTime'] = lastUpdateTime.toUtc().toIso8601String();
      json[r'customerSegment'] = customerSegment;
    return json;
  }

  /// Returns a new [Account] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Account fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Account(
        financialInstitutionId: mapValueOfType<String>(json, r'financialInstitutionId'),
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        type: AccountTypeEnum.fromJson(json[r'type']),
        availableBalance: AccountBalance.fromJson(json[r'availableBalance']),
        identifiers: AccountIdentifiers.fromJson(json[r'identifiers']),
        lastUpdateTime: mapDateTime(json, r'lastUpdateTime', ''),
        customerSegment: AccountCustomerSegmentEnum.fromJson(json[r'customerSegment']),
      );
    }
    return null;
  }

  static List<Account> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Account.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Account>[];

  static Map<String, Account> mapFromJson(dynamic json) {
    final map = <String, Account>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Account.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Account-objects as value to a dart map
  static Map<String, List<Account>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Account>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Account.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Тип счёта
class AccountTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const UNDEFINED = AccountTypeEnum._(r'UNDEFINED');
  static const CHECKING = AccountTypeEnum._(r'CHECKING');
  static const SAVINGS = AccountTypeEnum._(r'SAVINGS');
  static const CREDIT_CARD = AccountTypeEnum._(r'CREDIT_CARD');

  /// List of all possible values in this [enum][AccountTypeEnum].
  static const values = <AccountTypeEnum>[
    UNDEFINED,
    CHECKING,
    SAVINGS,
    CREDIT_CARD,
  ];

  static AccountTypeEnum fromJson(dynamic value) =>
    AccountTypeEnumTypeTransformer().decode(value);

  static List<AccountTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [AccountTypeEnum] to String,
/// and [decode] dynamic data back to [AccountTypeEnum].
class AccountTypeEnumTypeTransformer {
  factory AccountTypeEnumTypeTransformer() => _instance ??= const AccountTypeEnumTypeTransformer._();

  const AccountTypeEnumTypeTransformer._();

  String encode(AccountTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'UNDEFINED': return AccountTypeEnum.UNDEFINED;
        case r'CHECKING': return AccountTypeEnum.CHECKING;
        case r'SAVINGS': return AccountTypeEnum.SAVINGS;
        case r'CREDIT_CARD': return AccountTypeEnum.CREDIT_CARD;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountTypeEnumTypeTransformer] instance.
  static AccountTypeEnumTypeTransformer _instance;
}


/// Сегмент счёта
class AccountCustomerSegmentEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountCustomerSegmentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const UNDEFINED = AccountCustomerSegmentEnum._(r'UNDEFINED');
  static const PERSONAL = AccountCustomerSegmentEnum._(r'PERSONAL');
  static const BUSINESS = AccountCustomerSegmentEnum._(r'BUSINESS');

  /// List of all possible values in this [enum][AccountCustomerSegmentEnum].
  static const values = <AccountCustomerSegmentEnum>[
    UNDEFINED,
    PERSONAL,
    BUSINESS,
  ];

  static AccountCustomerSegmentEnum fromJson(dynamic value) =>
    AccountCustomerSegmentEnumTypeTransformer().decode(value);

  static List<AccountCustomerSegmentEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountCustomerSegmentEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountCustomerSegmentEnum>[];
}

/// Transformation class that can [encode] an instance of [AccountCustomerSegmentEnum] to String,
/// and [decode] dynamic data back to [AccountCustomerSegmentEnum].
class AccountCustomerSegmentEnumTypeTransformer {
  factory AccountCustomerSegmentEnumTypeTransformer() => _instance ??= const AccountCustomerSegmentEnumTypeTransformer._();

  const AccountCustomerSegmentEnumTypeTransformer._();

  String encode(AccountCustomerSegmentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountCustomerSegmentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountCustomerSegmentEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'UNDEFINED': return AccountCustomerSegmentEnum.UNDEFINED;
        case r'PERSONAL': return AccountCustomerSegmentEnum.PERSONAL;
        case r'BUSINESS': return AccountCustomerSegmentEnum.BUSINESS;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountCustomerSegmentEnumTypeTransformer] instance.
  static AccountCustomerSegmentEnumTypeTransformer _instance;
}


