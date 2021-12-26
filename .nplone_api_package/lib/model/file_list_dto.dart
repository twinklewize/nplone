//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FileListDto {
  /// Returns a new [FileListDto] instance.
  FileListDto({
    this.files = const [],
  });

  /// Список файлов
  List<FileDto> files;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileListDto &&
     other.files == files;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (files == null ? 0 : files.hashCode);

  @override
  String toString() => 'FileListDto[files=$files]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'files'] = files;
    return json;
  }

  /// Returns a new [FileListDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileListDto fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FileListDto(
        files: FileDto.listFromJson(json[r'files']),
      );
    }
    return null;
  }

  static List<FileListDto> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FileListDto.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FileListDto>[];

  static Map<String, FileListDto> mapFromJson(dynamic json) {
    final map = <String, FileListDto>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FileListDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FileListDto-objects as value to a dart map
  static Map<String, List<FileListDto>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FileListDto>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FileListDto.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

