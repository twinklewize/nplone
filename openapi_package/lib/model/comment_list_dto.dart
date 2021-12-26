//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CommentListDto {
  /// Returns a new [CommentListDto] instance.
  CommentListDto({
    this.comments = const [],
    this.count,
    this.nextPage,
  });

  List<CommentDto> comments;

  int count;

  int nextPage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommentListDto &&
     other.comments == comments &&
     other.count == count &&
     other.nextPage == nextPage;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (comments == null ? 0 : comments.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (nextPage == null ? 0 : nextPage.hashCode);

  @override
  String toString() => 'CommentListDto[comments=$comments, count=$count, nextPage=$nextPage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (comments != null) {
      json[r'comments'] = comments;
    }
    if (count != null) {
      json[r'count'] = count;
    }
    if (nextPage != null) {
      json[r'nextPage'] = nextPage;
    }
    return json;
  }

  /// Returns a new [CommentListDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommentListDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CommentListDto(
        comments: CommentDto.listFromJson(json[r'comments']),
        count: mapValueOfType<int>(json, r'count'),
        nextPage: mapValueOfType<int>(json, r'nextPage'),
      );
    }
    return null;
  }

  static List<CommentListDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CommentListDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CommentListDto>[];

  static Map<String, CommentListDto> mapFromJson(dynamic json) {
    final map = <String, CommentListDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CommentListDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommentListDto-objects as value to a dart map
  static Map<String, List<CommentListDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CommentListDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CommentListDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

