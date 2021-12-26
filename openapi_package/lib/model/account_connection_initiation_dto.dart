//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AccountConnectionInitiationDto {
  /// Returns a new [AccountConnectionInitiationDto] instance.
  AccountConnectionInitiationDto({
    this.redirectUri,
  });

  /// URI для начала добавления счёта
  String redirectUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountConnectionInitiationDto &&
     other.redirectUri == redirectUri;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (redirectUri == null ? 0 : redirectUri.hashCode);

  @override
  String toString() => 'AccountConnectionInitiationDto[redirectUri=$redirectUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (redirectUri != null) {
      json[r'redirectUri'] = redirectUri;
    }
    return json;
  }

  /// Returns a new [AccountConnectionInitiationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountConnectionInitiationDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AccountConnectionInitiationDto(
        redirectUri: mapValueOfType<String>(json, r'redirectUri'),
      );
    }
    return null;
  }

  static List<AccountConnectionInitiationDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AccountConnectionInitiationDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AccountConnectionInitiationDto>[];

  static Map<String, AccountConnectionInitiationDto> mapFromJson(dynamic json) {
    final map = <String, AccountConnectionInitiationDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AccountConnectionInitiationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountConnectionInitiationDto-objects as value to a dart map
  static Map<String, List<AccountConnectionInitiationDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AccountConnectionInitiationDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AccountConnectionInitiationDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

