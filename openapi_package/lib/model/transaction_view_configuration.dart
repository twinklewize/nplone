//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransactionViewConfiguration {
  /// Returns a new [TransactionViewConfiguration] instance.
  TransactionViewConfiguration({
    @required this.showDescription,
    @required this.showType,
    @required this.showOriginator,
    @required this.showReceiver,
    @required this.showAccount,
  });

  /// Показывать описание
  bool showDescription;

  /// Показывать тип
  bool showType;

  /// Показывать отправителя
  bool showOriginator;

  /// Показывать торговца/принимающую сторону
  bool showReceiver;

  /// Показывать информацию об счёте отправителя
  bool showAccount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionViewConfiguration &&
     other.showDescription == showDescription &&
     other.showType == showType &&
     other.showOriginator == showOriginator &&
     other.showReceiver == showReceiver &&
     other.showAccount == showAccount;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (showDescription == null ? 0 : showDescription.hashCode) +
    (showType == null ? 0 : showType.hashCode) +
    (showOriginator == null ? 0 : showOriginator.hashCode) +
    (showReceiver == null ? 0 : showReceiver.hashCode) +
    (showAccount == null ? 0 : showAccount.hashCode);

  @override
  String toString() => 'TransactionViewConfiguration[showDescription=$showDescription, showType=$showType, showOriginator=$showOriginator, showReceiver=$showReceiver, showAccount=$showAccount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'showDescription'] = showDescription;
      json[r'showType'] = showType;
      json[r'showOriginator'] = showOriginator;
      json[r'showReceiver'] = showReceiver;
      json[r'showAccount'] = showAccount;
    return json;
  }

  /// Returns a new [TransactionViewConfiguration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionViewConfiguration fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TransactionViewConfiguration(
        showDescription: mapValueOfType<bool>(json, r'showDescription'),
        showType: mapValueOfType<bool>(json, r'showType'),
        showOriginator: mapValueOfType<bool>(json, r'showOriginator'),
        showReceiver: mapValueOfType<bool>(json, r'showReceiver'),
        showAccount: mapValueOfType<bool>(json, r'showAccount'),
      );
    }
    return null;
  }

  static List<TransactionViewConfiguration> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransactionViewConfiguration.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransactionViewConfiguration>[];

  static Map<String, TransactionViewConfiguration> mapFromJson(dynamic json) {
    final map = <String, TransactionViewConfiguration>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TransactionViewConfiguration.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TransactionViewConfiguration-objects as value to a dart map
  static Map<String, List<TransactionViewConfiguration>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TransactionViewConfiguration>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TransactionViewConfiguration.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

