// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_object4.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineObject4 extends InlineObject4 {
  @override
  final Uint8List? icon;
  @override
  final Uint8List? banner;
  @override
  final SpaceEdit data;

  factory _$InlineObject4([void Function(InlineObject4Builder)? updates]) =>
      (new InlineObject4Builder()..update(updates)).build();

  _$InlineObject4._({this.icon, this.banner, required this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(data, 'InlineObject4', 'data');
  }

  @override
  InlineObject4 rebuild(void Function(InlineObject4Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject4Builder toBuilder() => new InlineObject4Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject4 &&
        icon == other.icon &&
        banner == other.banner &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, icon.hashCode), banner.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject4')
          ..add('icon', icon)
          ..add('banner', banner)
          ..add('data', data))
        .toString();
  }
}

class InlineObject4Builder
    implements Builder<InlineObject4, InlineObject4Builder> {
  _$InlineObject4? _$v;

  Uint8List? _icon;
  Uint8List? get icon => _$this._icon;
  set icon(Uint8List? icon) => _$this._icon = icon;

  Uint8List? _banner;
  Uint8List? get banner => _$this._banner;
  set banner(Uint8List? banner) => _$this._banner = banner;

  SpaceEditBuilder? _data;
  SpaceEditBuilder get data => _$this._data ??= new SpaceEditBuilder();
  set data(SpaceEditBuilder? data) => _$this._data = data;

  InlineObject4Builder() {
    InlineObject4._defaults(this);
  }

  InlineObject4Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _icon = $v.icon;
      _banner = $v.banner;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject4 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineObject4;
  }

  @override
  void update(void Function(InlineObject4Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject4 build() {
    _$InlineObject4 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject4._(icon: icon, banner: banner, data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject4', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
