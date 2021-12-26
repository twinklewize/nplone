//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenInfo {
  /// Returns a new [TokenInfo] instance.
  TokenInfo({
    @required this.accessToken,
    @required this.userId,
  });

  /// JWT ключ доступа к системе
  String accessToken;

  /// ID пользователя, под которым произошёл вход
  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenInfo &&
     other.accessToken == accessToken &&
     other.userId == userId;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (accessToken == null ? 0 : accessToken.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'TokenInfo[accessToken=$accessToken, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accessToken'] = accessToken;
      json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [TokenInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenInfo fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TokenInfo(
        accessToken: mapValueOfType<String>(json, r'accessToken'),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<TokenInfo> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TokenInfo.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TokenInfo>[];

  static Map<String, TokenInfo> mapFromJson(dynamic json) {
    final map = <String, TokenInfo>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TokenInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TokenInfo-objects as value to a dart map
  static Map<String, List<TokenInfo>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TokenInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TokenInfo.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

