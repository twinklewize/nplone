//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostItemDto {
  /// Returns a new [PostItemDto] instance.
  PostItemDto({
    @required this.id,
    @required this.postedWhen,
    @required this.title,
    @required this.descriptionStripped,
    @required this.icon,
    @required this.type,
    @required this.likes,
    @required this.liked,
    @required this.comments,
    this.transactionBalances = const [],
  });

  /// ID поста
  int id;

  /// Когда был опубликован
  DateTime postedWhen;

  /// Название поста
  String title;

  /// Текст поста
  String descriptionStripped;

  /// URL иконки
  String icon;

  /// Тип поста
  PostItemDtoTypeEnum type;

  /// Количество лайков
  int likes;

  /// Лайкнул ли пост пользователь
  bool liked;

  /// Количество комментариев к посту
  int comments;

  /// Балансы прикреплённых транзакций
  List<AccountBalance> transactionBalances;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostItemDto &&
     other.id == id &&
     other.postedWhen == postedWhen &&
     other.title == title &&
     other.descriptionStripped == descriptionStripped &&
     other.icon == icon &&
     other.type == type &&
     other.likes == likes &&
     other.liked == liked &&
     other.comments == comments &&
     other.transactionBalances == transactionBalances;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (postedWhen == null ? 0 : postedWhen.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (descriptionStripped == null ? 0 : descriptionStripped.hashCode) +
    (icon == null ? 0 : icon.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (likes == null ? 0 : likes.hashCode) +
    (liked == null ? 0 : liked.hashCode) +
    (comments == null ? 0 : comments.hashCode) +
    (transactionBalances == null ? 0 : transactionBalances.hashCode);

  @override
  String toString() => 'PostItemDto[id=$id, postedWhen=$postedWhen, title=$title, descriptionStripped=$descriptionStripped, icon=$icon, type=$type, likes=$likes, liked=$liked, comments=$comments, transactionBalances=$transactionBalances]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'postedWhen'] = postedWhen.toUtc().toIso8601String();
      json[r'title'] = title;
      json[r'descriptionStripped'] = descriptionStripped;
      json[r'icon'] = icon;
      json[r'type'] = type;
      json[r'likes'] = likes;
      json[r'liked'] = liked;
      json[r'comments'] = comments;
      json[r'transactionBalances'] = transactionBalances;
    return json;
  }

  /// Returns a new [PostItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostItemDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PostItemDto(
        id: mapValueOfType<int>(json, r'id'),
        postedWhen: mapDateTime(json, r'postedWhen', ''),
        title: mapValueOfType<String>(json, r'title'),
        descriptionStripped: mapValueOfType<String>(json, r'descriptionStripped'),
        icon: mapValueOfType<String>(json, r'icon'),
        type: PostItemDtoTypeEnum.fromJson(json[r'type']),
        likes: mapValueOfType<int>(json, r'likes'),
        liked: mapValueOfType<bool>(json, r'liked'),
        comments: mapValueOfType<int>(json, r'comments'),
        transactionBalances: AccountBalance.listFromJson(json[r'transactionBalances']),
      );
    }
    return null;
  }

  static List<PostItemDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PostItemDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PostItemDto>[];

  static Map<String, PostItemDto> mapFromJson(dynamic json) {
    final map = <String, PostItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PostItemDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PostItemDto-objects as value to a dart map
  static Map<String, List<PostItemDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PostItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PostItemDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Тип поста
class PostItemDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PostItemDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const NEWS = PostItemDtoTypeEnum._(r'NEWS');

  /// List of all possible values in this [enum][PostItemDtoTypeEnum].
  static const values = <PostItemDtoTypeEnum>[
    NEWS,
  ];

  static PostItemDtoTypeEnum fromJson(dynamic value) =>
    PostItemDtoTypeEnumTypeTransformer().decode(value);

  static List<PostItemDtoTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PostItemDtoTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PostItemDtoTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [PostItemDtoTypeEnum] to String,
/// and [decode] dynamic data back to [PostItemDtoTypeEnum].
class PostItemDtoTypeEnumTypeTransformer {
  factory PostItemDtoTypeEnumTypeTransformer() => _instance ??= const PostItemDtoTypeEnumTypeTransformer._();

  const PostItemDtoTypeEnumTypeTransformer._();

  String encode(PostItemDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostItemDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostItemDtoTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'NEWS': return PostItemDtoTypeEnum.NEWS;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PostItemDtoTypeEnumTypeTransformer] instance.
  static PostItemDtoTypeEnumTypeTransformer _instance;
}


