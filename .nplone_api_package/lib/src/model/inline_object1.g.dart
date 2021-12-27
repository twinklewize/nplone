// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_object1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineObject1 extends InlineObject1 {
  @override
  final Uint8List icon;
  @override
  final PostEditDto data;

  factory _$InlineObject1([void Function(InlineObject1Builder)? updates]) =>
      (new InlineObject1Builder()..update(updates)).build();

  _$InlineObject1._({required this.icon, required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(icon, 'InlineObject1', 'icon');
    BuiltValueNullFieldError.checkNotNull(data, 'InlineObject1', 'data');
  }

  @override
  InlineObject1 rebuild(void Function(InlineObject1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject1Builder toBuilder() => new InlineObject1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject1 && icon == other.icon && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, icon.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject1')
          ..add('icon', icon)
          ..add('data', data))
        .toString();
  }
}

class InlineObject1Builder
    implements Builder<InlineObject1, InlineObject1Builder> {
  _$InlineObject1? _$v;

  Uint8List? _icon;
  Uint8List? get icon => _$this._icon;
  set icon(Uint8List? icon) => _$this._icon = icon;

  PostEditDtoBuilder? _data;
  PostEditDtoBuilder get data => _$this._data ??= new PostEditDtoBuilder();
  set data(PostEditDtoBuilder? data) => _$this._data = data;

  InlineObject1Builder() {
    InlineObject1._defaults(this);
  }

  InlineObject1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _icon = $v.icon;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject1 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineObject1;
  }

  @override
  void update(void Function(InlineObject1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject1 build() {
    _$InlineObject1 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject1._(
              icon: BuiltValueNullFieldError.checkNotNull(
                  icon, 'InlineObject1', 'icon'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject1', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
