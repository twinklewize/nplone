//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountIdentifiers {
  /// Returns a new [AccountIdentifiers] instance.
  AccountIdentifiers({
    this.iban,
    this.bic,
  });

  /// IBAN
  String iban;

  /// BIC
  String bic;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountIdentifiers &&
     other.iban == iban &&
     other.bic == bic;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (iban == null ? 0 : iban.hashCode) +
    (bic == null ? 0 : bic.hashCode);

  @override
  String toString() => 'AccountIdentifiers[iban=$iban, bic=$bic]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (iban != null) {
      json[r'iban'] = iban;
    }
    if (bic != null) {
      json[r'bic'] = bic;
    }
    return json;
  }

  /// Returns a new [AccountIdentifiers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountIdentifiers fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountIdentifiers(
        iban: mapValueOfType<String>(json, r'iban'),
        bic: mapValueOfType<String>(json, r'bic'),
      );
    }
    return null;
  }

  static List<AccountIdentifiers> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountIdentifiers.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountIdentifiers>[];

  static Map<String, AccountIdentifiers> mapFromJson(dynamic json) {
    final map = <String, AccountIdentifiers>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountIdentifiers.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountIdentifiers-objects as value to a dart map
  static Map<String, List<AccountIdentifiers>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountIdentifiers>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountIdentifiers.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

