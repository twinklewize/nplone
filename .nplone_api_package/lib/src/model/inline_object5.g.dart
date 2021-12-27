// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_object5.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineObject5 extends InlineObject5 {
  @override
  final Uint8List? icon;
  @override
  final PostEditDto data;

  factory _$InlineObject5([void Function(InlineObject5Builder)? updates]) =>
      (new InlineObject5Builder()..update(updates)).build();

  _$InlineObject5._({this.icon, required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, 'InlineObject5', 'data');
  }

  @override
  InlineObject5 rebuild(void Function(InlineObject5Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject5Builder toBuilder() => new InlineObject5Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject5 && icon == other.icon && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, icon.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject5')
          ..add('icon', icon)
          ..add('data', data))
        .toString();
  }
}

class InlineObject5Builder
    implements Builder<InlineObject5, InlineObject5Builder> {
  _$InlineObject5? _$v;

  Uint8List? _icon;
  Uint8List? get icon => _$this._icon;
  set icon(Uint8List? icon) => _$this._icon = icon;

  PostEditDtoBuilder? _data;
  PostEditDtoBuilder get data => _$this._data ??= new PostEditDtoBuilder();
  set data(PostEditDtoBuilder? data) => _$this._data = data;

  InlineObject5Builder() {
    InlineObject5._defaults(this);
  }

  InlineObject5Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _icon = $v.icon;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject5 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineObject5;
  }

  @override
  void update(void Function(InlineObject5Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject5 build() {
    _$InlineObject5 _$result;
    try {
      _$result = _$v ?? new _$InlineObject5._(icon: icon, data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject5', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
