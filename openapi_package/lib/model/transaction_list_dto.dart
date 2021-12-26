//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransactionListDto {
  /// Returns a new [TransactionListDto] instance.
  TransactionListDto({
    this.transactions = const [],
    @required this.nextPageToken,
  });

  /// Транзакции
  List<TransactionItemDto> transactions;

  /// Токен следующей страницы
  String nextPageToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionListDto &&
     other.transactions == transactions &&
     other.nextPageToken == nextPageToken;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (transactions == null ? 0 : transactions.hashCode) +
    (nextPageToken == null ? 0 : nextPageToken.hashCode);

  @override
  String toString() => 'TransactionListDto[transactions=$transactions, nextPageToken=$nextPageToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transactions'] = transactions;
      json[r'nextPageToken'] = nextPageToken;
    return json;
  }

  /// Returns a new [TransactionListDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionListDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TransactionListDto(
        transactions: TransactionItemDto.listFromJson(json[r'transactions']),
        nextPageToken: mapValueOfType<String>(json, r'nextPageToken'),
      );
    }
    return null;
  }

  static List<TransactionListDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransactionListDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransactionListDto>[];

  static Map<String, TransactionListDto> mapFromJson(dynamic json) {
    final map = <String, TransactionListDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TransactionListDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TransactionListDto-objects as value to a dart map
  static Map<String, List<TransactionListDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TransactionListDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TransactionListDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

