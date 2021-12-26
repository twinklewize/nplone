//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GoogleToken {
  /// Returns a new [GoogleToken] instance.
  GoogleToken({
    @required this.token,
    @required this.country,
  });

  /// Токен
  String token;

  /// Страна
  String country;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GoogleToken &&
     other.token == token &&
     other.country == country;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (token == null ? 0 : token.hashCode) +
    (country == null ? 0 : country.hashCode);

  @override
  String toString() => 'GoogleToken[token=$token, country=$country]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = token;
      json[r'country'] = country;
    return json;
  }

  /// Returns a new [GoogleToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GoogleToken fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GoogleToken(
        token: mapValueOfType<String>(json, r'token'),
        country: mapValueOfType<String>(json, r'country'),
      );
    }
    return null;
  }

  static List<GoogleToken> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GoogleToken.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GoogleToken>[];

  static Map<String, GoogleToken> mapFromJson(dynamic json) {
    final map = <String, GoogleToken>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GoogleToken.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GoogleToken-objects as value to a dart map
  static Map<String, List<GoogleToken>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GoogleToken>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GoogleToken.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

