//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CommentPostDto {
  /// Returns a new [CommentPostDto] instance.
  CommentPostDto({
    this.text,
  });

  /// Текст комментария
  String text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommentPostDto &&
     other.text == text;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (text == null ? 0 : text.hashCode);

  @override
  String toString() => 'CommentPostDto[text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (text != null) {
      json[r'text'] = text;
    }
    return json;
  }

  /// Returns a new [CommentPostDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommentPostDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CommentPostDto(
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<CommentPostDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CommentPostDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CommentPostDto>[];

  static Map<String, CommentPostDto> mapFromJson(dynamic json) {
    final map = <String, CommentPostDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CommentPostDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommentPostDto-objects as value to a dart map
  static Map<String, List<CommentPostDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CommentPostDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CommentPostDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

