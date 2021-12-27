// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Space extends Space {
  @override
  final String primaryAccount;
  @override
  final String name;
  @override
  final String? website;
  @override
  final String? description;
  @override
  final String? addressText;
  @override
  final String icon;
  @override
  final String banner;

  factory _$Space([void Function(SpaceBuilder)? updates]) =>
      (new SpaceBuilder()..update(updates)).build();

  _$Space._(
      {required this.primaryAccount,
      required this.name,
      this.website,
      this.description,
      this.addressText,
      required this.icon,
      required this.banner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        primaryAccount, 'Space', 'primaryAccount');
    BuiltValueNullFieldError.checkNotNull(name, 'Space', 'name');
    BuiltValueNullFieldError.checkNotNull(icon, 'Space', 'icon');
    BuiltValueNullFieldError.checkNotNull(banner, 'Space', 'banner');
  }

  @override
  Space rebuild(void Function(SpaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpaceBuilder toBuilder() => new SpaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Space &&
        primaryAccount == other.primaryAccount &&
        name == other.name &&
        website == other.website &&
        description == other.description &&
        addressText == other.addressText &&
        icon == other.icon &&
        banner == other.banner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, primaryAccount.hashCode), name.hashCode),
                        website.hashCode),
                    description.hashCode),
                addressText.hashCode),
            icon.hashCode),
        banner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Space')
          ..add('primaryAccount', primaryAccount)
          ..add('name', name)
          ..add('website', website)
          ..add('description', description)
          ..add('addressText', addressText)
          ..add('icon', icon)
          ..add('banner', banner))
        .toString();
  }
}

class SpaceBuilder implements Builder<Space, SpaceBuilder> {
  _$Space? _$v;

  String? _primaryAccount;
  String? get primaryAccount => _$this._primaryAccount;
  set primaryAccount(String? primaryAccount) =>
      _$this._primaryAccount = primaryAccount;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _addressText;
  String? get addressText => _$this._addressText;
  set addressText(String? addressText) => _$this._addressText = addressText;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _banner;
  String? get banner => _$this._banner;
  set banner(String? banner) => _$this._banner = banner;

  SpaceBuilder() {
    Space._defaults(this);
  }

  SpaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _primaryAccount = $v.primaryAccount;
      _name = $v.name;
      _website = $v.website;
      _description = $v.description;
      _addressText = $v.addressText;
      _icon = $v.icon;
      _banner = $v.banner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Space other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Space;
  }

  @override
  void update(void Function(SpaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Space build() {
    final _$result = _$v ??
        new _$Space._(
            primaryAccount: BuiltValueNullFieldError.checkNotNull(
                primaryAccount, 'Space', 'primaryAccount'),
            name: BuiltValueNullFieldError.checkNotNull(name, 'Space', 'name'),
            website: website,
            description: description,
            addressText: addressText,
            icon: BuiltValueNullFieldError.checkNotNull(icon, 'Space', 'icon'),
            banner: BuiltValueNullFieldError.checkNotNull(
                banner, 'Space', 'banner'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
