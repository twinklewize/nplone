// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileDto extends FileDto {
  @override
  final String id;
  @override
  final String filename;
  @override
  final int size;
  @override
  final String link;

  factory _$FileDto([void Function(FileDtoBuilder)? updates]) =>
      (new FileDtoBuilder()..update(updates)).build();

  _$FileDto._(
      {required this.id,
      required this.filename,
      required this.size,
      required this.link})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'FileDto', 'id');
    BuiltValueNullFieldError.checkNotNull(filename, 'FileDto', 'filename');
    BuiltValueNullFieldError.checkNotNull(size, 'FileDto', 'size');
    BuiltValueNullFieldError.checkNotNull(link, 'FileDto', 'link');
  }

  @override
  FileDto rebuild(void Function(FileDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileDtoBuilder toBuilder() => new FileDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileDto &&
        id == other.id &&
        filename == other.filename &&
        size == other.size &&
        link == other.link;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), filename.hashCode), size.hashCode),
        link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileDto')
          ..add('id', id)
          ..add('filename', filename)
          ..add('size', size)
          ..add('link', link))
        .toString();
  }
}

class FileDtoBuilder implements Builder<FileDto, FileDtoBuilder> {
  _$FileDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  FileDtoBuilder() {
    FileDto._defaults(this);
  }

  FileDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _filename = $v.filename;
      _size = $v.size;
      _link = $v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FileDto;
  }

  @override
  void update(void Function(FileDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FileDto build() {
    final _$result = _$v ??
        new _$FileDto._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'FileDto', 'id'),
            filename: BuiltValueNullFieldError.checkNotNull(
                filename, 'FileDto', 'filename'),
            size:
                BuiltValueNullFieldError.checkNotNull(size, 'FileDto', 'size'),
            link:
                BuiltValueNullFieldError.checkNotNull(link, 'FileDto', 'link'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
