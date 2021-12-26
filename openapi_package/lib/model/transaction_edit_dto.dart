//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TransactionEditDto {
  /// Returns a new [TransactionEditDto] instance.
  TransactionEditDto({
    this.description,
    this.viewConfiguration,
  });

  /// Описание
  String description;

  TransactionViewConfiguration viewConfiguration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TransactionEditDto &&
     other.description == description &&
     other.viewConfiguration == viewConfiguration;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (description == null ? 0 : description.hashCode) +
    (viewConfiguration == null ? 0 : viewConfiguration.hashCode);

  @override
  String toString() => 'TransactionEditDto[description=$description, viewConfiguration=$viewConfiguration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (description != null) {
      json[r'description'] = description;
    }
    if (viewConfiguration != null) {
      json[r'viewConfiguration'] = viewConfiguration;
    }
    return json;
  }

  /// Returns a new [TransactionEditDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TransactionEditDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TransactionEditDto(
        description: mapValueOfType<String>(json, r'description'),
        viewConfiguration: TransactionViewConfiguration.fromJson(json[r'viewConfiguration']),
      );
    }
    return null;
  }

  static List<TransactionEditDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TransactionEditDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TransactionEditDto>[];

  static Map<String, TransactionEditDto> mapFromJson(dynamic json) {
    final map = <String, TransactionEditDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TransactionEditDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TransactionEditDto-objects as value to a dart map
  static Map<String, List<TransactionEditDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TransactionEditDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TransactionEditDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

