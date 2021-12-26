//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpaceBankingInfo {
  /// Returns a new [SpaceBankingInfo] instance.
  SpaceBankingInfo({
    this.total,
    this.primaryAccount,
    this.linkedAccounts = const [],
  });

  AccountBalance total;

  Account primaryAccount;

  List<Account> linkedAccounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceBankingInfo &&
     other.total == total &&
     other.primaryAccount == primaryAccount &&
     other.linkedAccounts == linkedAccounts;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (total == null ? 0 : total.hashCode) +
    (primaryAccount == null ? 0 : primaryAccount.hashCode) +
    (linkedAccounts == null ? 0 : linkedAccounts.hashCode);

  @override
  String toString() => 'SpaceBankingInfo[total=$total, primaryAccount=$primaryAccount, linkedAccounts=$linkedAccounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (total != null) {
      json[r'total'] = total;
    }
    if (primaryAccount != null) {
      json[r'primaryAccount'] = primaryAccount;
    }
    if (linkedAccounts != null) {
      json[r'linkedAccounts'] = linkedAccounts;
    }
    return json;
  }

  /// Returns a new [SpaceBankingInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceBankingInfo fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SpaceBankingInfo(
        total: AccountBalance.fromJson(json[r'total']),
        primaryAccount: Account.fromJson(json[r'primaryAccount']),
        linkedAccounts: Account.listFromJson(json[r'linkedAccounts']),
      );
    }
    return null;
  }

  static List<SpaceBankingInfo> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SpaceBankingInfo.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SpaceBankingInfo>[];

  static Map<String, SpaceBankingInfo> mapFromJson(dynamic json) {
    final map = <String, SpaceBankingInfo>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SpaceBankingInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SpaceBankingInfo-objects as value to a dart map
  static Map<String, List<SpaceBankingInfo>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SpaceBankingInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SpaceBankingInfo.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

