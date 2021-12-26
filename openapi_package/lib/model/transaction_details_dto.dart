//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransactionDetailsDto {
  /// Returns a new [TransactionDetailsDto] instance.
  TransactionDetailsDto({
    @required this.id,
    @required this.amount,
    @required this.bookedAt,
    this.description,
    this.merchant,
    this.type,
    this.accountDetails,
    this.originator,
    @required this.published,
    this.publisher,
    this.viewConfiguration,
  });

  /// ID транзакции
  String id;

  AccountBalance amount;

  /// Когда транзакция была подтверждена банком
  DateTime bookedAt;

  /// Описание
  String description;

  Merchant merchant;

  /// Тип транзакции
  TransactionDetailsDtoTypeEnum type;

  TransactionAccountDetails accountDetails;

  UserSummaryDto originator;

  /// Опубликована
  bool published;

  UserSummaryDto publisher;

  TransactionViewConfiguration viewConfiguration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionDetailsDto &&
     other.id == id &&
     other.amount == amount &&
     other.bookedAt == bookedAt &&
     other.description == description &&
     other.merchant == merchant &&
     other.type == type &&
     other.accountDetails == accountDetails &&
     other.originator == originator &&
     other.published == published &&
     other.publisher == publisher &&
     other.viewConfiguration == viewConfiguration;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (bookedAt == null ? 0 : bookedAt.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (merchant == null ? 0 : merchant.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (accountDetails == null ? 0 : accountDetails.hashCode) +
    (originator == null ? 0 : originator.hashCode) +
    (published == null ? 0 : published.hashCode) +
    (publisher == null ? 0 : publisher.hashCode) +
    (viewConfiguration == null ? 0 : viewConfiguration.hashCode);

  @override
  String toString() => 'TransactionDetailsDto[id=$id, amount=$amount, bookedAt=$bookedAt, description=$description, merchant=$merchant, type=$type, accountDetails=$accountDetails, originator=$originator, published=$published, publisher=$publisher, viewConfiguration=$viewConfiguration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'amount'] = amount;
      json[r'bookedAt'] = bookedAt.toUtc().toIso8601String();
    if (description != null) {
      json[r'description'] = description;
    }
    if (merchant != null) {
      json[r'merchant'] = merchant;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (accountDetails != null) {
      json[r'accountDetails'] = accountDetails;
    }
    if (originator != null) {
      json[r'originator'] = originator;
    }
      json[r'published'] = published;
    if (publisher != null) {
      json[r'publisher'] = publisher;
    }
    if (viewConfiguration != null) {
      json[r'viewConfiguration'] = viewConfiguration;
    }
    return json;
  }

  /// Returns a new [TransactionDetailsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionDetailsDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TransactionDetailsDto(
        id: mapValueOfType<String>(json, r'id'),
        amount: AccountBalance.fromJson(json[r'amount']),
        bookedAt: mapDateTime(json, r'bookedAt', ''),
        description: mapValueOfType<String>(json, r'description'),
        merchant: Merchant.fromJson(json[r'merchant']),
        type: TransactionDetailsDtoTypeEnum.fromJson(json[r'type']),
        accountDetails: TransactionAccountDetails.fromJson(json[r'accountDetails']),
        originator: UserSummaryDto.fromJson(json[r'originator']),
        published: mapValueOfType<bool>(json, r'published'),
        publisher: UserSummaryDto.fromJson(json[r'publisher']),
        viewConfiguration: TransactionViewConfiguration.fromJson(json[r'viewConfiguration']),
      );
    }
    return null;
  }

  static List<TransactionDetailsDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransactionDetailsDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransactionDetailsDto>[];

  static Map<String, TransactionDetailsDto> mapFromJson(dynamic json) {
    final map = <String, TransactionDetailsDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TransactionDetailsDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TransactionDetailsDto-objects as value to a dart map
  static Map<String, List<TransactionDetailsDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TransactionDetailsDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TransactionDetailsDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Тип транзакции
class TransactionDetailsDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TransactionDetailsDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const UNDEFINED = TransactionDetailsDtoTypeEnum._(r'UNDEFINED');
  static const CREDIT_CARD = TransactionDetailsDtoTypeEnum._(r'CREDIT_CARD');
  static const PAYMENT = TransactionDetailsDtoTypeEnum._(r'PAYMENT');
  static const WITHDRAWAL = TransactionDetailsDtoTypeEnum._(r'WITHDRAWAL');
  static const DEFAULT = TransactionDetailsDtoTypeEnum._(r'DEFAULT');
  static const TRANSFER = TransactionDetailsDtoTypeEnum._(r'TRANSFER');

  /// List of all possible values in this [enum][TransactionDetailsDtoTypeEnum].
  static const values = <TransactionDetailsDtoTypeEnum>[
    UNDEFINED,
    CREDIT_CARD,
    PAYMENT,
    WITHDRAWAL,
    DEFAULT,
    TRANSFER,
  ];

  static TransactionDetailsDtoTypeEnum fromJson(dynamic value) =>
    TransactionDetailsDtoTypeEnumTypeTransformer().decode(value);

  static List<TransactionDetailsDtoTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransactionDetailsDtoTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransactionDetailsDtoTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [TransactionDetailsDtoTypeEnum] to String,
/// and [decode] dynamic data back to [TransactionDetailsDtoTypeEnum].
class TransactionDetailsDtoTypeEnumTypeTransformer {
  factory TransactionDetailsDtoTypeEnumTypeTransformer() => _instance ??= const TransactionDetailsDtoTypeEnumTypeTransformer._();

  const TransactionDetailsDtoTypeEnumTypeTransformer._();

  String encode(TransactionDetailsDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TransactionDetailsDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TransactionDetailsDtoTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'UNDEFINED': return TransactionDetailsDtoTypeEnum.UNDEFINED;
        case r'CREDIT_CARD': return TransactionDetailsDtoTypeEnum.CREDIT_CARD;
        case r'PAYMENT': return TransactionDetailsDtoTypeEnum.PAYMENT;
        case r'WITHDRAWAL': return TransactionDetailsDtoTypeEnum.WITHDRAWAL;
        case r'DEFAULT': return TransactionDetailsDtoTypeEnum.DEFAULT;
        case r'TRANSFER': return TransactionDetailsDtoTypeEnum.TRANSFER;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TransactionDetailsDtoTypeEnumTypeTransformer] instance.
  static TransactionDetailsDtoTypeEnumTypeTransformer _instance;
}


