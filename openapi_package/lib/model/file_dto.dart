//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FileDto {
  /// Returns a new [FileDto] instance.
  FileDto({
    @required this.id,
    @required this.filename,
    @required this.size,
    @required this.link,
  });

  /// ID файла
  String id;

  /// Имя файла
  String filename;

  /// Размер файла в байтах
  int size;

  /// Ссылка на скачивание файла
  String link;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileDto &&
     other.id == id &&
     other.filename == filename &&
     other.size == size &&
     other.link == link;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (filename == null ? 0 : filename.hashCode) +
    (size == null ? 0 : size.hashCode) +
    (link == null ? 0 : link.hashCode);

  @override
  String toString() => 'FileDto[id=$id, filename=$filename, size=$size, link=$link]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'filename'] = filename;
      json[r'size'] = size;
      json[r'link'] = link;
    return json;
  }

  /// Returns a new [FileDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FileDto(
        id: mapValueOfType<String>(json, r'id'),
        filename: mapValueOfType<String>(json, r'filename'),
        size: mapValueOfType<int>(json, r'size'),
        link: mapValueOfType<String>(json, r'link'),
      );
    }
    return null;
  }

  static List<FileDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FileDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FileDto>[];

  static Map<String, FileDto> mapFromJson(dynamic json) {
    final map = <String, FileDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FileDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FileDto-objects as value to a dart map
  static Map<String, List<FileDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FileDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FileDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

