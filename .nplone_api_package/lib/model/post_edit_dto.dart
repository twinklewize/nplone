//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostEditDto {
  /// Returns a new [PostEditDto] instance.
  PostEditDto({
    @required this.title,
    @required this.description,
    this.transactions = const [],
  });

  /// Название поста
  String title;

  /// Описание поста
  String description;

  /// Привязанные транзакции
  List<String> transactions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostEditDto &&
     other.title == title &&
     other.description == description &&
     other.transactions == transactions;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (title == null ? 0 : title.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (transactions == null ? 0 : transactions.hashCode);

  @override
  String toString() => 'PostEditDto[title=$title, description=$description, transactions=$transactions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title'] = title;
      json[r'description'] = description;
      json[r'transactions'] = transactions;
    return json;
  }

  /// Returns a new [PostEditDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostEditDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PostEditDto(
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        transactions: json[r'transactions'] is List
          ? (json[r'transactions'] as List).cast<String>()
          : null,
      );
    }
    return null;
  }

  static List<PostEditDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PostEditDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PostEditDto>[];

  static Map<String, PostEditDto> mapFromJson(dynamic json) {
    final map = <String, PostEditDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PostEditDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PostEditDto-objects as value to a dart map
  static Map<String, List<PostEditDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PostEditDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PostEditDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

