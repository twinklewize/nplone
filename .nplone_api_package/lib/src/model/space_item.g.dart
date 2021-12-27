// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SpaceItemModeEnum _$spaceItemModeEnum_PRIVATE =
    const SpaceItemModeEnum._('PRIVATE');
const SpaceItemModeEnum _$spaceItemModeEnum_INVITATION =
    const SpaceItemModeEnum._('INVITATION');
const SpaceItemModeEnum _$spaceItemModeEnum_SUBSCRIPTION =
    const SpaceItemModeEnum._('SUBSCRIPTION');
const SpaceItemModeEnum _$spaceItemModeEnum_PUBLIC =
    const SpaceItemModeEnum._('PUBLIC');

SpaceItemModeEnum _$spaceItemModeEnumValueOf(String name) {
  switch (name) {
    case 'PRIVATE':
      return _$spaceItemModeEnum_PRIVATE;
    case 'INVITATION':
      return _$spaceItemModeEnum_INVITATION;
    case 'SUBSCRIPTION':
      return _$spaceItemModeEnum_SUBSCRIPTION;
    case 'PUBLIC':
      return _$spaceItemModeEnum_PUBLIC;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SpaceItemModeEnum> _$spaceItemModeEnumValues =
    new BuiltSet<SpaceItemModeEnum>(const <SpaceItemModeEnum>[
  _$spaceItemModeEnum_PRIVATE,
  _$spaceItemModeEnum_INVITATION,
  _$spaceItemModeEnum_SUBSCRIPTION,
  _$spaceItemModeEnum_PUBLIC,
]);

Serializer<SpaceItemModeEnum> _$spaceItemModeEnumSerializer =
    new _$SpaceItemModeEnumSerializer();

class _$SpaceItemModeEnumSerializer
    implements PrimitiveSerializer<SpaceItemModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PRIVATE': 'PRIVATE',
    'INVITATION': 'INVITATION',
    'SUBSCRIPTION': 'SUBSCRIPTION',
    'PUBLIC': 'PUBLIC',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PRIVATE': 'PRIVATE',
    'INVITATION': 'INVITATION',
    'SUBSCRIPTION': 'SUBSCRIPTION',
    'PUBLIC': 'PUBLIC',
  };

  @override
  final Iterable<Type> types = const <Type>[SpaceItemModeEnum];
  @override
  final String wireName = 'SpaceItemModeEnum';

  @override
  Object serialize(Serializers serializers, SpaceItemModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SpaceItemModeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SpaceItemModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SpaceItem extends SpaceItem {
  @override
  final String id;
  @override
  final String name;
  @override
  final String icon;
  @override
  final SpaceItemModeEnum mode;
  @override
  final String primaryAccount;

  factory _$SpaceItem([void Function(SpaceItemBuilder)? updates]) =>
      (new SpaceItemBuilder()..update(updates)).build();

  _$SpaceItem._(
      {required this.id,
      required this.name,
      required this.icon,
      required this.mode,
      required this.primaryAccount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'SpaceItem', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'SpaceItem', 'name');
    BuiltValueNullFieldError.checkNotNull(icon, 'SpaceItem', 'icon');
    BuiltValueNullFieldError.checkNotNull(mode, 'SpaceItem', 'mode');
    BuiltValueNullFieldError.checkNotNull(
        primaryAccount, 'SpaceItem', 'primaryAccount');
  }

  @override
  SpaceItem rebuild(void Function(SpaceItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpaceItemBuilder toBuilder() => new SpaceItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpaceItem &&
        id == other.id &&
        name == other.name &&
        icon == other.icon &&
        mode == other.mode &&
        primaryAccount == other.primaryAccount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), name.hashCode), icon.hashCode),
            mode.hashCode),
        primaryAccount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpaceItem')
          ..add('id', id)
          ..add('name', name)
          ..add('icon', icon)
          ..add('mode', mode)
          ..add('primaryAccount', primaryAccount))
        .toString();
  }
}

class SpaceItemBuilder implements Builder<SpaceItem, SpaceItemBuilder> {
  _$SpaceItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  SpaceItemModeEnum? _mode;
  SpaceItemModeEnum? get mode => _$this._mode;
  set mode(SpaceItemModeEnum? mode) => _$this._mode = mode;

  String? _primaryAccount;
  String? get primaryAccount => _$this._primaryAccount;
  set primaryAccount(String? primaryAccount) =>
      _$this._primaryAccount = primaryAccount;

  SpaceItemBuilder() {
    SpaceItem._defaults(this);
  }

  SpaceItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _icon = $v.icon;
      _mode = $v.mode;
      _primaryAccount = $v.primaryAccount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpaceItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpaceItem;
  }

  @override
  void update(void Function(SpaceItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpaceItem build() {
    final _$result = _$v ??
        new _$SpaceItem._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'SpaceItem', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'SpaceItem', 'name'),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon, 'SpaceItem', 'icon'),
            mode: BuiltValueNullFieldError.checkNotNull(
                mode, 'SpaceItem', 'mode'),
            primaryAccount: BuiltValueNullFieldError.checkNotNull(
                primaryAccount, 'SpaceItem', 'primaryAccount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
