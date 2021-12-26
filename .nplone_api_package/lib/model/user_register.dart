//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserRegister {
  /// Returns a new [UserRegister] instance.
  UserRegister({
    @required this.email,
    @required this.password,
    @required this.country,
  });

  /// E-Mail пользователя
  String email;

  /// Пароль пользователя
  String password;

  /// Страна пользователя (согласно ISO 3166-1)
  String country;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserRegister &&
     other.email == email &&
     other.password == password &&
     other.country == country;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (email == null ? 0 : email.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (country == null ? 0 : country.hashCode);

  @override
  String toString() => 'UserRegister[email=$email, password=$password, country=$country]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = email;
      json[r'password'] = password;
      json[r'country'] = country;
    return json;
  }

  /// Returns a new [UserRegister] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserRegister fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UserRegister(
        email: mapValueOfType<String>(json, r'email'),
        password: mapValueOfType<String>(json, r'password'),
        country: mapValueOfType<String>(json, r'country'),
      );
    }
    return null;
  }

  static List<UserRegister> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UserRegister.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UserRegister>[];

  static Map<String, UserRegister> mapFromJson(dynamic json) {
    final map = <String, UserRegister>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UserRegister.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserRegister-objects as value to a dart map
  static Map<String, List<UserRegister>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserRegister>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UserRegister.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

