//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineObject5 {
  /// Returns a new [InlineObject5] instance.
  InlineObject5({
    this.icon,
    @required this.data,
  });

  /// Иконка поста
  MultipartFile icon;

  PostEditDto data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject5 &&
     other.icon == icon &&
     other.data == data;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (icon == null ? 0 : icon.hashCode) +
    (data == null ? 0 : data.hashCode);

  @override
  String toString() => 'InlineObject5[icon=$icon, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (icon != null) {
      json[r'icon'] = icon;
    }
      json[r'data'] = data;
    return json;
  }

  /// Returns a new [InlineObject5] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineObject5 fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return InlineObject5(
        icon: null, // No support for decoding binary content from JSON
        data: PostEditDto.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<InlineObject5> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(InlineObject5.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <InlineObject5>[];

  static Map<String, InlineObject5> mapFromJson(dynamic json) {
    final map = <String, InlineObject5>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = InlineObject5.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject5-objects as value to a dart map
  static Map<String, List<InlineObject5>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject5>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = InlineObject5.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

