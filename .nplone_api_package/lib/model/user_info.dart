//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserInfo {
  /// Returns a new [UserInfo] instance.
  UserInfo({
    @required this.id,
    @required this.email,
    this.name,
    this.givenName,
    this.familyName,
  });

  /// ID пользователя
  String id;

  /// E-Mail пользователя
  String email;

  /// ФИО пользователя
  String name;

  /// Имя пользователя
  String givenName;

  /// Фамилия пользователя
  String familyName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserInfo &&
     other.id == id &&
     other.email == email &&
     other.name == name &&
     other.givenName == givenName &&
     other.familyName == familyName;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (givenName == null ? 0 : givenName.hashCode) +
    (familyName == null ? 0 : familyName.hashCode);

  @override
  String toString() => 'UserInfo[id=$id, email=$email, name=$name, givenName=$givenName, familyName=$familyName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'email'] = email;
    if (name != null) {
      json[r'name'] = name;
    }
    if (givenName != null) {
      json[r'givenName'] = givenName;
    }
    if (familyName != null) {
      json[r'familyName'] = familyName;
    }
    return json;
  }

  /// Returns a new [UserInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserInfo fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UserInfo(
        id: mapValueOfType<String>(json, r'id'),
        email: mapValueOfType<String>(json, r'email'),
        name: mapValueOfType<String>(json, r'name'),
        givenName: mapValueOfType<String>(json, r'givenName'),
        familyName: mapValueOfType<String>(json, r'familyName'),
      );
    }
    return null;
  }

  static List<UserInfo> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UserInfo.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UserInfo>[];

  static Map<String, UserInfo> mapFromJson(dynamic json) {
    final map = <String, UserInfo>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UserInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserInfo-objects as value to a dart map
  static Map<String, List<UserInfo>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UserInfo.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

