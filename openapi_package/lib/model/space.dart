//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Space {
  /// Returns a new [Space] instance.
  Space({
    @required this.primaryAccount,
    @required this.name,
    this.website,
    this.description,
    this.addressText,
    @required this.icon,
    @required this.banner,
  });

  /// ID основного счёта
  String primaryAccount;

  /// Имя пространства
  String name;

  /// Вебсайт
  String website;

  /// Описание
  String description;

  /// Адрес
  String addressText;

  /// URL адреса
  String icon;

  /// URL баннера
  String banner;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Space &&
     other.primaryAccount == primaryAccount &&
     other.name == name &&
     other.website == website &&
     other.description == description &&
     other.addressText == addressText &&
     other.icon == icon &&
     other.banner == banner;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (primaryAccount == null ? 0 : primaryAccount.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (website == null ? 0 : website.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (addressText == null ? 0 : addressText.hashCode) +
    (icon == null ? 0 : icon.hashCode) +
    (banner == null ? 0 : banner.hashCode);

  @override
  String toString() => 'Space[primaryAccount=$primaryAccount, name=$name, website=$website, description=$description, addressText=$addressText, icon=$icon, banner=$banner]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'primaryAccount'] = primaryAccount;
      json[r'name'] = name;
    if (website != null) {
      json[r'website'] = website;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (addressText != null) {
      json[r'addressText'] = addressText;
    }
      json[r'icon'] = icon;
      json[r'banner'] = banner;
    return json;
  }

  /// Returns a new [Space] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Space fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Space(
        primaryAccount: mapValueOfType<String>(json, r'primaryAccount'),
        name: mapValueOfType<String>(json, r'name'),
        website: mapValueOfType<String>(json, r'website'),
        description: mapValueOfType<String>(json, r'description'),
        addressText: mapValueOfType<String>(json, r'addressText'),
        icon: mapValueOfType<String>(json, r'icon'),
        banner: mapValueOfType<String>(json, r'banner'),
      );
    }
    return null;
  }

  static List<Space> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Space.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Space>[];

  static Map<String, Space> mapFromJson(dynamic json) {
    final map = <String, Space>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Space.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Space-objects as value to a dart map
  static Map<String, List<Space>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Space>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Space.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

