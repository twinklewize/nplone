// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpaceList extends SpaceList {
  @override
  final BuiltList<SpaceItem> items;
  @override
  final int count;
  @override
  final bool last;

  factory _$SpaceList([void Function(SpaceListBuilder)? updates]) =>
      (new SpaceListBuilder()..update(updates)).build();

  _$SpaceList._({required this.items, required this.count, required this.last})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(items, 'SpaceList', 'items');
    BuiltValueNullFieldError.checkNotNull(count, 'SpaceList', 'count');
    BuiltValueNullFieldError.checkNotNull(last, 'SpaceList', 'last');
  }

  @override
  SpaceList rebuild(void Function(SpaceListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpaceListBuilder toBuilder() => new SpaceListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpaceList &&
        items == other.items &&
        count == other.count &&
        last == other.last;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, items.hashCode), count.hashCode), last.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpaceList')
          ..add('items', items)
          ..add('count', count)
          ..add('last', last))
        .toString();
  }
}

class SpaceListBuilder implements Builder<SpaceList, SpaceListBuilder> {
  _$SpaceList? _$v;

  ListBuilder<SpaceItem>? _items;
  ListBuilder<SpaceItem> get items =>
      _$this._items ??= new ListBuilder<SpaceItem>();
  set items(ListBuilder<SpaceItem>? items) => _$this._items = items;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  bool? _last;
  bool? get last => _$this._last;
  set last(bool? last) => _$this._last = last;

  SpaceListBuilder() {
    SpaceList._defaults(this);
  }

  SpaceListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _count = $v.count;
      _last = $v.last;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpaceList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpaceList;
  }

  @override
  void update(void Function(SpaceListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpaceList build() {
    _$SpaceList _$result;
    try {
      _$result = _$v ??
          new _$SpaceList._(
              items: items.build(),
              count: BuiltValueNullFieldError.checkNotNull(
                  count, 'SpaceList', 'count'),
              last: BuiltValueNullFieldError.checkNotNull(
                  last, 'SpaceList', 'last'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SpaceList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
