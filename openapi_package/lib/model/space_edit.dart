//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpaceEdit {
  /// Returns a new [SpaceEdit] instance.
  SpaceEdit({
    this.name,
    this.website,
    this.description,
    this.addressText,
  });

  /// Имя пространства
  String name;

  /// Вебсайт
  String website;

  /// Описание
  String description;

  /// Адрес
  String addressText;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceEdit &&
     other.name == name &&
     other.website == website &&
     other.description == description &&
     other.addressText == addressText;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (website == null ? 0 : website.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (addressText == null ? 0 : addressText.hashCode);

  @override
  String toString() => 'SpaceEdit[name=$name, website=$website, description=$description, addressText=$addressText]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (website != null) {
      json[r'website'] = website;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (addressText != null) {
      json[r'addressText'] = addressText;
    }
    return json;
  }

  /// Returns a new [SpaceEdit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceEdit fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SpaceEdit(
        name: mapValueOfType<String>(json, r'name'),
        website: mapValueOfType<String>(json, r'website'),
        description: mapValueOfType<String>(json, r'description'),
        addressText: mapValueOfType<String>(json, r'addressText'),
      );
    }
    return null;
  }

  static List<SpaceEdit> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SpaceEdit.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SpaceEdit>[];

  static Map<String, SpaceEdit> mapFromJson(dynamic json) {
    final map = <String, SpaceEdit>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SpaceEdit.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SpaceEdit-objects as value to a dart map
  static Map<String, List<SpaceEdit>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SpaceEdit>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SpaceEdit.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

