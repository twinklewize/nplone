//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Provider {
  /// Returns a new [Provider] instance.
  Provider({
    @required this.currency,
    this.displayDescription,
    this.displayName,
    @required this.financialInstitutionId,
    @required this.financialInstitutionName,
    @required this.groupDisplayName,
    @required this.loginHeaderColour,
    @required this.market,
    @required this.uid,
    @required this.popular,
    @required this.bannerImage,
    @required this.iconImage,
  });

  /// Валюта провайдера
  String currency;

  /// Описание
  String displayDescription;

  /// Имя
  String displayName;

  /// ID финансовой организации
  String financialInstitutionId;

  /// Имя финансовой организации
  String financialInstitutionName;

  /// Имя группы провайдеров
  String groupDisplayName;

  /// Цвет хедера при логине
  String loginHeaderColour;

  /// Рынок
  String market;

  /// UID провайдера
  String uid;

  /// Популярен ли провайдер
  bool popular;

  /// Ссылка на баннер провайдера
  String bannerImage;

  /// Ссылка на иконку провайдера
  String iconImage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Provider &&
     other.currency == currency &&
     other.displayDescription == displayDescription &&
     other.displayName == displayName &&
     other.financialInstitutionId == financialInstitutionId &&
     other.financialInstitutionName == financialInstitutionName &&
     other.groupDisplayName == groupDisplayName &&
     other.loginHeaderColour == loginHeaderColour &&
     other.market == market &&
     other.uid == uid &&
     other.popular == popular &&
     other.bannerImage == bannerImage &&
     other.iconImage == iconImage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency.hashCode) +
    (displayDescription == null ? 0 : displayDescription.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (financialInstitutionId == null ? 0 : financialInstitutionId.hashCode) +
    (financialInstitutionName == null ? 0 : financialInstitutionName.hashCode) +
    (groupDisplayName == null ? 0 : groupDisplayName.hashCode) +
    (loginHeaderColour == null ? 0 : loginHeaderColour.hashCode) +
    (market == null ? 0 : market.hashCode) +
    (uid == null ? 0 : uid.hashCode) +
    (popular == null ? 0 : popular.hashCode) +
    (bannerImage == null ? 0 : bannerImage.hashCode) +
    (iconImage == null ? 0 : iconImage.hashCode);

  @override
  String toString() => 'Provider[currency=$currency, displayDescription=$displayDescription, displayName=$displayName, financialInstitutionId=$financialInstitutionId, financialInstitutionName=$financialInstitutionName, groupDisplayName=$groupDisplayName, loginHeaderColour=$loginHeaderColour, market=$market, uid=$uid, popular=$popular, bannerImage=$bannerImage, iconImage=$iconImage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'currency'] = currency;
    if (displayDescription != null) {
      json[r'displayDescription'] = displayDescription;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
      json[r'financialInstitutionId'] = financialInstitutionId;
      json[r'financialInstitutionName'] = financialInstitutionName;
      json[r'groupDisplayName'] = groupDisplayName;
      json[r'loginHeaderColour'] = loginHeaderColour;
      json[r'market'] = market;
      json[r'uid'] = uid;
      json[r'popular'] = popular;
      json[r'bannerImage'] = bannerImage;
      json[r'iconImage'] = iconImage;
    return json;
  }

  /// Returns a new [Provider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Provider fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Provider(
        currency: mapValueOfType<String>(json, r'currency'),
        displayDescription: mapValueOfType<String>(json, r'displayDescription'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        financialInstitutionId: mapValueOfType<String>(json, r'financialInstitutionId'),
        financialInstitutionName: mapValueOfType<String>(json, r'financialInstitutionName'),
        groupDisplayName: mapValueOfType<String>(json, r'groupDisplayName'),
        loginHeaderColour: mapValueOfType<String>(json, r'loginHeaderColour'),
        market: mapValueOfType<String>(json, r'market'),
        uid: mapValueOfType<String>(json, r'uid'),
        popular: mapValueOfType<bool>(json, r'popular'),
        bannerImage: mapValueOfType<String>(json, r'bannerImage'),
        iconImage: mapValueOfType<String>(json, r'iconImage'),
      );
    }
    return null;
  }

  static List<Provider> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Provider.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Provider>[];

  static Map<String, Provider> mapFromJson(dynamic json) {
    final map = <String, Provider>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Provider.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Provider-objects as value to a dart map
  static Map<String, List<Provider>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Provider>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Provider.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

