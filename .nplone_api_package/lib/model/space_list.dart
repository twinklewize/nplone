//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpaceList {
  /// Returns a new [SpaceList] instance.
  SpaceList({
    this.items = const [],
    @required this.count,
    @required this.last,
  });

  /// Список пространств
  List<SpaceItem> items;

  /// Количество элементов
  int count;

  /// Является ли текущая выборка последней в списке
  bool last;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpaceList &&
     other.items == items &&
     other.count == count &&
     other.last == last;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (items == null ? 0 : items.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (last == null ? 0 : last.hashCode);

  @override
  String toString() => 'SpaceList[items=$items, count=$count, last=$last]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = items;
      json[r'count'] = count;
      json[r'last'] = last;
    return json;
  }

  /// Returns a new [SpaceList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpaceList fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SpaceList(
        items: SpaceItem.listFromJson(json[r'items']),
        count: mapValueOfType<int>(json, r'count'),
        last: mapValueOfType<bool>(json, r'last'),
      );
    }
    return null;
  }

  static List<SpaceList> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SpaceList.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SpaceList>[];

  static Map<String, SpaceList> mapFromJson(dynamic json) {
    final map = <String, SpaceList>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SpaceList.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SpaceList-objects as value to a dart map
  static Map<String, List<SpaceList>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SpaceList>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SpaceList.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

