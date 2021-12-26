//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostListDto {
  /// Returns a new [PostListDto] instance.
  PostListDto({
    this.posts = const [],
    @required this.nextPageToken,
  });

  /// Посты
  List<PostItemDto> posts;

  /// Токен следующей страницы
  String nextPageToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostListDto &&
     other.posts == posts &&
     other.nextPageToken == nextPageToken;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (posts == null ? 0 : posts.hashCode) +
    (nextPageToken == null ? 0 : nextPageToken.hashCode);

  @override
  String toString() => 'PostListDto[posts=$posts, nextPageToken=$nextPageToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'posts'] = posts;
      json[r'nextPageToken'] = nextPageToken;
    return json;
  }

  /// Returns a new [PostListDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostListDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PostListDto(
        posts: PostItemDto.listFromJson(json[r'posts']),
        nextPageToken: mapValueOfType<String>(json, r'nextPageToken'),
      );
    }
    return null;
  }

  static List<PostListDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PostListDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PostListDto>[];

  static Map<String, PostListDto> mapFromJson(dynamic json) {
    final map = <String, PostListDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PostListDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PostListDto-objects as value to a dart map
  static Map<String, List<PostListDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PostListDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PostListDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

