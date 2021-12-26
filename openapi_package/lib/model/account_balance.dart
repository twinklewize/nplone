//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountBalance {
  /// Returns a new [AccountBalance] instance.
  AccountBalance({
    @required this.currencyCode,
    @required this.scale,
    @required this.unscaledValue,
  });

  /// Код валюты
  String currencyCode;

  /// Размерность значения
  int scale;

  /// Безразмерное значение баланса
  int unscaledValue;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountBalance &&
     other.currencyCode == currencyCode &&
     other.scale == scale &&
     other.unscaledValue == unscaledValue;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (currencyCode == null ? 0 : currencyCode.hashCode) +
    (scale == null ? 0 : scale.hashCode) +
    (unscaledValue == null ? 0 : unscaledValue.hashCode);

  @override
  String toString() => 'AccountBalance[currencyCode=$currencyCode, scale=$scale, unscaledValue=$unscaledValue]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'currencyCode'] = currencyCode;
      json[r'scale'] = scale;
      json[r'unscaledValue'] = unscaledValue;
    return json;
  }

  /// Returns a new [AccountBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountBalance fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountBalance(
        currencyCode: mapValueOfType<String>(json, r'currencyCode'),
        scale: mapValueOfType<int>(json, r'scale'),
        unscaledValue: mapValueOfType<int>(json, r'unscaledValue'),
      );
    }
    return null;
  }

  static List<AccountBalance> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountBalance.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountBalance>[];

  static Map<String, AccountBalance> mapFromJson(dynamic json) {
    final map = <String, AccountBalance>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountBalance.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountBalance-objects as value to a dart map
  static Map<String, List<AccountBalance>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountBalance>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountBalance.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

