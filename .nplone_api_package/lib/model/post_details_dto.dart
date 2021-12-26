//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PostDetailsDto {
  /// Returns a new [PostDetailsDto] instance.
  PostDetailsDto({
    this.id,
    this.postedWhen,
    this.title,
    this.description,
    this.icon,
    this.type,
    this.postedBy,
    this.transactions = const [],
  });

  int id;

  DateTime postedWhen;

  String title;

  String description;

  String icon;

  PostDetailsDtoTypeEnum type;

  UserSummaryDto postedBy;

  List<TransactionItemDto> transactions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostDetailsDto &&
     other.id == id &&
     other.postedWhen == postedWhen &&
     other.title == title &&
     other.description == description &&
     other.icon == icon &&
     other.type == type &&
     other.postedBy == postedBy &&
     other.transactions == transactions;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (postedWhen == null ? 0 : postedWhen.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (icon == null ? 0 : icon.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (postedBy == null ? 0 : postedBy.hashCode) +
    (transactions == null ? 0 : transactions.hashCode);

  @override
  String toString() => 'PostDetailsDto[id=$id, postedWhen=$postedWhen, title=$title, description=$description, icon=$icon, type=$type, postedBy=$postedBy, transactions=$transactions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (postedWhen != null) {
      json[r'postedWhen'] = postedWhen.toUtc().toIso8601String();
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (icon != null) {
      json[r'icon'] = icon;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (postedBy != null) {
      json[r'postedBy'] = postedBy;
    }
    if (transactions != null) {
      json[r'transactions'] = transactions;
    }
    return json;
  }

  /// Returns a new [PostDetailsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostDetailsDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PostDetailsDto(
        id: mapValueOfType<int>(json, r'id'),
        postedWhen: mapDateTime(json, r'postedWhen', ''),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        icon: mapValueOfType<String>(json, r'icon'),
        type: PostDetailsDtoTypeEnum.fromJson(json[r'type']),
        postedBy: UserSummaryDto.fromJson(json[r'postedBy']),
        transactions: TransactionItemDto.listFromJson(json[r'transactions']),
      );
    }
    return null;
  }

  static List<PostDetailsDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PostDetailsDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PostDetailsDto>[];

  static Map<String, PostDetailsDto> mapFromJson(dynamic json) {
    final map = <String, PostDetailsDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PostDetailsDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PostDetailsDto-objects as value to a dart map
  static Map<String, List<PostDetailsDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PostDetailsDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PostDetailsDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}


class PostDetailsDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PostDetailsDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const NEWS = PostDetailsDtoTypeEnum._(r'NEWS');

  /// List of all possible values in this [enum][PostDetailsDtoTypeEnum].
  static const values = <PostDetailsDtoTypeEnum>[
    NEWS,
  ];

  static PostDetailsDtoTypeEnum fromJson(dynamic value) =>
    PostDetailsDtoTypeEnumTypeTransformer().decode(value);

  static List<PostDetailsDtoTypeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PostDetailsDtoTypeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PostDetailsDtoTypeEnum>[];
}

/// Transformation class that can [encode] an instance of [PostDetailsDtoTypeEnum] to String,
/// and [decode] dynamic data back to [PostDetailsDtoTypeEnum].
class PostDetailsDtoTypeEnumTypeTransformer {
  factory PostDetailsDtoTypeEnumTypeTransformer() => _instance ??= const PostDetailsDtoTypeEnumTypeTransformer._();

  const PostDetailsDtoTypeEnumTypeTransformer._();

  String encode(PostDetailsDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PostDetailsDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PostDetailsDtoTypeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'NEWS': return PostDetailsDtoTypeEnum.NEWS;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PostDetailsDtoTypeEnumTypeTransformer] instance.
  static PostDetailsDtoTypeEnumTypeTransformer _instance;
}


