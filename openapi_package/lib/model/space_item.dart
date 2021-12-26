//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpaceItem {
  /// Returns a new [SpaceItem] instance.
  SpaceItem({
    @required this.id,
    @required this.name,
    @required this.icon,
    @required this.mode,
    @required this.primaryAccount,
  });

  /// ID пространства
  String id;

  /// Имя пространства
  String name;

  /// Ссылка на иконку пространства
  String icon;

  /// Режим доступа
  SpaceItemModeEnum mode;

  /// ID основного счёта пространства
  String primaryAccount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceItem &&
     other.id == id &&
     other.name == name &&
     other.icon == icon &&
     other.mode == mode &&
     other.primaryAccount == primaryAccount;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (icon == null ? 0 : icon.hashCode) +
    (mode == null ? 0 : mode.hashCode) +
    (primaryAccount == null ? 0 : primaryAccount.hashCode);

  @override
  String toString() => 'SpaceItem[id=$id, name=$name, icon=$icon, mode=$mode, primaryAccount=$primaryAccount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'name'] = name;
      json[r'icon'] = icon;
      json[r'mode'] = mode;
      json[r'primaryAccount'] = primaryAccount;
    return json;
  }

  /// Returns a new [SpaceItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceItem fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SpaceItem(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        icon: mapValueOfType<String>(json, r'icon'),
        mode: SpaceItemModeEnum.fromJson(json[r'mode']),
        primaryAccount: mapValueOfType<String>(json, r'primaryAccount'),
      );
    }
    return null;
  }

  static List<SpaceItem> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SpaceItem.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SpaceItem>[];

  static Map<String, SpaceItem> mapFromJson(dynamic json) {
    final map = <String, SpaceItem>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SpaceItem.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SpaceItem-objects as value to a dart map
  static Map<String, List<SpaceItem>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SpaceItem>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SpaceItem.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

/// Режим доступа
class SpaceItemModeEnum {
  /// Instantiate a new enum with the provided [value].
  const SpaceItemModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value ?? '';

  String toJson() => value;

  static const PRIVATE = SpaceItemModeEnum._(r'PRIVATE');
  static const INVITATION = SpaceItemModeEnum._(r'INVITATION');
  static const SUBSCRIPTION = SpaceItemModeEnum._(r'SUBSCRIPTION');
  static const PUBLIC = SpaceItemModeEnum._(r'PUBLIC');

  /// List of all possible values in this [enum][SpaceItemModeEnum].
  static const values = <SpaceItemModeEnum>[
    PRIVATE,
    INVITATION,
    SUBSCRIPTION,
    PUBLIC,
  ];

  static SpaceItemModeEnum fromJson(dynamic value) =>
    SpaceItemModeEnumTypeTransformer().decode(value);

  static List<SpaceItemModeEnum> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SpaceItemModeEnum.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SpaceItemModeEnum>[];
}

/// Transformation class that can [encode] an instance of [SpaceItemModeEnum] to String,
/// and [decode] dynamic data back to [SpaceItemModeEnum].
class SpaceItemModeEnumTypeTransformer {
  factory SpaceItemModeEnumTypeTransformer() => _instance ??= const SpaceItemModeEnumTypeTransformer._();

  const SpaceItemModeEnumTypeTransformer._();

  String encode(SpaceItemModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SpaceItemModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SpaceItemModeEnum decode(dynamic data, {bool allowNull}) {
    if (data != null) {
      switch (data.toString()) {
        case r'PRIVATE': return SpaceItemModeEnum.PRIVATE;
        case r'INVITATION': return SpaceItemModeEnum.INVITATION;
        case r'SUBSCRIPTION': return SpaceItemModeEnum.SUBSCRIPTION;
        case r'PUBLIC': return SpaceItemModeEnum.PUBLIC;
        default:
          if (allowNull == false) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SpaceItemModeEnumTypeTransformer] instance.
  static SpaceItemModeEnumTypeTransformer _instance;
}


