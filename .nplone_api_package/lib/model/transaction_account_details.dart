//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransactionAccountDetails {
  /// Returns a new [TransactionAccountDetails] instance.
  TransactionAccountDetails({
    @required this.financialInstitutionId,
    @required this.iban,
  });

  /// ID финансовой организации, предоставляющей счёт
  String financialInstitutionId;

  /// Идентификатор счёта
  String iban;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionAccountDetails &&
     other.financialInstitutionId == financialInstitutionId &&
     other.iban == iban;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (financialInstitutionId == null ? 0 : financialInstitutionId.hashCode) +
    (iban == null ? 0 : iban.hashCode);

  @override
  String toString() => 'TransactionAccountDetails[financialInstitutionId=$financialInstitutionId, iban=$iban]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'financialInstitutionId'] = financialInstitutionId;
      json[r'iban'] = iban;
    return json;
  }

  /// Returns a new [TransactionAccountDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionAccountDetails fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TransactionAccountDetails(
        financialInstitutionId: mapValueOfType<String>(json, r'financialInstitutionId'),
        iban: mapValueOfType<String>(json, r'iban'),
      );
    }
    return null;
  }

  static List<TransactionAccountDetails> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransactionAccountDetails.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransactionAccountDetails>[];

  static Map<String, TransactionAccountDetails> mapFromJson(dynamic json) {
    final map = <String, TransactionAccountDetails>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TransactionAccountDetails.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TransactionAccountDetails-objects as value to a dart map
  static Map<String, List<TransactionAccountDetails>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TransactionAccountDetails>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TransactionAccountDetails.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

