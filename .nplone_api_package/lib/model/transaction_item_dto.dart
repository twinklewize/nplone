//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransactionItemDto {
  /// Returns a new [TransactionItemDto] instance.
  TransactionItemDto({
    @required this.id,
    @required this.accountId,
    @required this.amount,
    @required this.bookedAt,
    this.description,
    this.merchant,
    @required this.type,
    @required this.posted,
    @required this.comments,
    @required this.files,
  });

  /// ID транзакции
  String id;

  /// ID счёта
  String accountId;

  AccountBalance amount;

  /// Когда транзакция была подтверждена банком
  DateTime bookedAt;

  /// Описание
  String description;

  Merchant merchant;

  /// Тип транзакции
  TransactionItemDtoTypeEnum type;

  /// Опубликована ли транзакция
  bool posted;

  /// Количество комментариев к транзакции
  int comments;

  /// Количество файлов к транзакции
  int files;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionItemDto &&
     other.id == id &&
     other.accountId == accountId &&
     other.amount == amount &&
     other.bookedAt == bookedAt &&
     other.description == description &&
     other.merchant == merchant &&
     other.type == type &&
     other.posted == posted &&
     other.comments == comments &&
     other.files == files;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (accountId == null ? 0 : accountId.hashCode) +
    (amount == null ? 0 : amount.hashCode) +
    (bookedAt == null ? 0 : bookedAt.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (merchant == null ? 0 : merchant.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (posted == null ? 0 : posted.hashCode) +
    (comments == null ? 0 : comments.hashCode) +
    (files == null ? 0 : files.hashCode);

  @override
  String toString() => 'TransactionItemDto[id=$id, accountId=$accountId, amount=$amount, bookedAt=$bookedAt, description=$description, merchant=$merchant, type=$type, posted=$posted, comments=$comments, files=$files]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'accountId'] = accountId;
      json[r'amount'] = amount;
      json[r'bookedAt'] = bookedAt.toUtc().toIso8601String();
    if (description != null) {
      json[r'description'] = description;
    }
    if (merchant != null) {
      json[r'merchant'] = merchant;
    }
      json[r'type'] = type;
      json[r'posted'] = posted;
      json[r'comments'] = comments;
      json[r'files'] = files;
    return json;
  }

  /// Returns a new [TransactionItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionItemDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TransactionItemDto(
        id: mapValueOfType<String>(json, r'id'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        amount: AccountBalance.fromJson(json[r'amount']),
        bookedAt: mapDateTime(json, r'bookedAt', ''),
        description: mapValueOfType<String>(json, r'description'),
        merchant: Merchant.fromJson(json[r'merchant']),
        type: TransactionItemDtoTypeEnum.fromJson(json[r'type']),
        posted: mapValueOfType<bool>(json, r'posted'),
        comments: mapValueOfType<int>(json, r'comments'),
        files: mapValueOfType<int>(json, r'files'),
      );
    }
    return null;
  }

  static List<TransactionItemDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransactionItemDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransactionItemDto>[];

  static Map<String, TransactionItemDto> mapFromJson(dynamic json) {
    final map = <String, TransactionItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TransactionItemDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TransactionItemDto-objects as value to a dart map
  static Map<String, List<TransactionItemDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TransactionItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TransactionItemDto.listFromJson(
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
class TransactionItemDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TransactionItemDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const UNDEFINED = TransactionItemDtoTypeEnum._(r'UNDEFINED');
  static const CREDIT_CARD = TransactionItemDtoTypeEnum._(r'CREDIT_CARD');
  static const PAYMENT = TransactionItemDtoTypeEnum._(r'PAYMENT');
  static const WITHDRAWAL = TransactionItemDtoTypeEnum._(r'WITHDRAWAL');
  static const DEFAULT = TransactionItemDtoTypeEnum._(r'DEFAULT');
  static const TRANSFER = TransactionItemDtoTypeEnum._(r'TRANSFER');

  /// List of all possible values in this [enum][TransactionItemDtoTypeEnum].
  static const values = <TransactionItemDtoTypeEnum>[
    UNDEFINED,
    CREDIT_CARD,
    PAYMENT,
    WITHDRAWAL,
    DEFAULT,
    TRANSFER,
  ];

  static TransactionItemDtoTypeEnum fromJson(dynamic value) =>
    TransactionItemDtoTypeEnumTypeTransformer().decode(value);

  static List<TransactionItemDtoTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransactionItemDtoTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransactionItemDtoTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [TransactionItemDtoTypeEnum] to String,
/// and [decode] dynamic data back to [TransactionItemDtoTypeEnum].
class TransactionItemDtoTypeEnumTypeTransformer {
  factory TransactionItemDtoTypeEnumTypeTransformer() => _instance ??= const TransactionItemDtoTypeEnumTypeTransformer._();

  const TransactionItemDtoTypeEnumTypeTransformer._();

  String encode(TransactionItemDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TransactionItemDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TransactionItemDtoTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'UNDEFINED': return TransactionItemDtoTypeEnum.UNDEFINED;
        case r'CREDIT_CARD': return TransactionItemDtoTypeEnum.CREDIT_CARD;
        case r'PAYMENT': return TransactionItemDtoTypeEnum.PAYMENT;
        case r'WITHDRAWAL': return TransactionItemDtoTypeEnum.WITHDRAWAL;
        case r'DEFAULT': return TransactionItemDtoTypeEnum.DEFAULT;
        case r'TRANSFER': return TransactionItemDtoTypeEnum.TRANSFER;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TransactionItemDtoTypeEnumTypeTransformer] instance.
  static TransactionItemDtoTypeEnumTypeTransformer _instance;
}


