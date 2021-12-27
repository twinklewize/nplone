// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InlineObject extends InlineObject {
  @override
  final Uint8List icon;
  @override
  final Uint8List banner;
  @override
  final SpaceCreate data;

  factory _$InlineObject([void Function(InlineObjectBuilder)? updates]) =>
      (new InlineObjectBuilder()..update(updates)).build();

  _$InlineObject._(
      {required this.icon, required this.banner, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(icon, 'InlineObject', 'icon');
    BuiltValueNullFieldError.checkNotNull(banner, 'InlineObject', 'banner');
    BuiltValueNullFieldError.checkNotNull(data, 'InlineObject', 'data');
  }

  @override
  InlineObject rebuild(void Function(InlineObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObjectBuilder toBuilder() => new InlineObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject &&
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
    return (newBuiltValueToStringHelper('InlineObject')
          ..add('icon', icon)
          ..add('banner', banner)
          ..add('data', data))
        .toString();
  }
}

class InlineObjectBuilder
    implements Builder<InlineObject, InlineObjectBuilder> {
  _$InlineObject? _$v;

  Uint8List? _icon;
  Uint8List? get icon => _$this._icon;
  set icon(Uint8List? icon) => _$this._icon = icon;

  Uint8List? _banner;
  Uint8List? get banner => _$this._banner;
  set banner(Uint8List? banner) => _$this._banner = banner;

  SpaceCreateBuilder? _data;
  SpaceCreateBuilder get data => _$this._data ??= new SpaceCreateBuilder();
  set data(SpaceCreateBuilder? data) => _$this._data = data;

  InlineObjectBuilder() {
    InlineObject._defaults(this);
  }

  InlineObjectBuilder get _$this {
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
  void replace(InlineObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InlineObject;
  }

  @override
  void update(void Function(InlineObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject build() {
    _$InlineObject _$result;
    try {
      _$result = _$v ??
          new _$InlineObject._(
              icon: BuiltValueNullFieldError.checkNotNull(
                  icon, 'InlineObject', 'icon'),
              banner: BuiltValueNullFieldError.checkNotNull(
                  banner, 'InlineObject', 'banner'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
