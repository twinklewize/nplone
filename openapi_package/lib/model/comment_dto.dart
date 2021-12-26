//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CommentDto {
  /// Returns a new [CommentDto] instance.
  CommentDto({
    @required this.id,
    @required this.author,
    @required this.postedAt,
    @required this.text,
    @required this.likes,
    @required this.liked,
  });

  /// ID комментария
  int id;

  UserSummaryDto author;

  /// Когда был создан
  DateTime postedAt;

  /// Текст
  String text;

  /// Кол-во лайков
  int likes;

  /// Лайкнул ли этот коммент текущий юзер
  bool liked;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommentDto &&
     other.id == id &&
     other.author == author &&
     other.postedAt == postedAt &&
     other.text == text &&
     other.likes == likes &&
     other.liked == liked;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (author == null ? 0 : author.hashCode) +
    (postedAt == null ? 0 : postedAt.hashCode) +
    (text == null ? 0 : text.hashCode) +
    (likes == null ? 0 : likes.hashCode) +
    (liked == null ? 0 : liked.hashCode);

  @override
  String toString() => 'CommentDto[id=$id, author=$author, postedAt=$postedAt, text=$text, likes=$likes, liked=$liked]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'author'] = author;
      json[r'postedAt'] = postedAt.toUtc().toIso8601String();
      json[r'text'] = text;
      json[r'likes'] = likes;
      json[r'liked'] = liked;
    return json;
  }

  /// Returns a new [CommentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommentDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return CommentDto(
        id: mapValueOfType<int>(json, r'id'),
        author: UserSummaryDto.fromJson(json[r'author']),
        postedAt: mapDateTime(json, r'postedAt', ''),
        text: mapValueOfType<String>(json, r'text'),
        likes: mapValueOfType<int>(json, r'likes'),
        liked: mapValueOfType<bool>(json, r'liked'),
      );
    }
    return null;
  }

  static List<CommentDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(CommentDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <CommentDto>[];

  static Map<String, CommentDto> mapFromJson(dynamic json) {
    final map = <String, CommentDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = CommentDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CommentDto-objects as value to a dart map
  static Map<String, List<CommentDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CommentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = CommentDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

