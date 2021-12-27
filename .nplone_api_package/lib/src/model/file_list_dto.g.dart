// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_list_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileListDto extends FileListDto {
  @override
  final BuiltList<FileDto> files;

  factory _$FileListDto([void Function(FileListDtoBuilder)? updates]) =>
      (new FileListDtoBuilder()..update(updates)).build();

  _$FileListDto._({required this.files}) : super._() {
    BuiltValueNullFieldError.checkNotNull(files, 'FileListDto', 'files');
  }

  @override
  FileListDto rebuild(void Function(FileListDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileListDtoBuilder toBuilder() => new FileListDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileListDto && files == other.files;
  }

  @override
  int get hashCode {
    return $jf($jc(0, files.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileListDto')..add('files', files))
        .toString();
  }
}

class FileListDtoBuilder implements Builder<FileListDto, FileListDtoBuilder> {
  _$FileListDto? _$v;

  ListBuilder<FileDto>? _files;
  ListBuilder<FileDto> get files =>
      _$this._files ??= new ListBuilder<FileDto>();
  set files(ListBuilder<FileDto>? files) => _$this._files = files;

  FileListDtoBuilder() {
    FileListDto._defaults(this);
  }

  FileListDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _files = $v.files.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileListDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileListDto;
  }

  @override
  void update(void Function(FileListDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FileListDto build() {
    _$FileListDto _$result;
    try {
      _$result = _$v ?? new _$FileListDto._(files: files.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'files';
        files.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FileListDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
