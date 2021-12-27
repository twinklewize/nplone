// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_object3.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineObject3 extends InlineObject3 {
  @override
  final Uint8List file;

  factory _$InlineObject3([void Function(InlineObject3Builder)? updates]) =>
      (new InlineObject3Builder()..update(updates)).build();

  _$InlineObject3._({required this.file}) : super._() {
    BuiltValueNullFieldError.checkNotNull(file, 'InlineObject3', 'file');
  }

  @override
  InlineObject3 rebuild(void Function(InlineObject3Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject3Builder toBuilder() => new InlineObject3Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject3 && file == other.file;
  }

  @override
  int get hashCode {
    return $jf($jc(0, file.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject3')..add('file', file))
        .toString();
  }
}

class InlineObject3Builder
    implements Builder<InlineObject3, InlineObject3Builder> {
  _$InlineObject3? _$v;

  Uint8List? _file;
  Uint8List? get file => _$this._file;
  set file(Uint8List? file) => _$this._file = file;

  InlineObject3Builder() {
    InlineObject3._defaults(this);
  }

  InlineObject3Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject3 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineObject3;
  }

  @override
  void update(void Function(InlineObject3Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject3 build() {
    final _$result = _$v ??
        new _$InlineObject3._(
            file: BuiltValueNullFieldError.checkNotNull(
                file, 'InlineObject3', 'file'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
