// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpaceCreate extends SpaceCreate {
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

  factory _$SpaceCreate([void Function(SpaceCreateBuilder)? updates]) =>
      (new SpaceCreateBuilder()..update(updates)).build();

  _$SpaceCreate._(
      {required this.primaryAccount,
      required this.name,
      this.website,
      this.description,
      this.addressText})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        primaryAccount, 'SpaceCreate', 'primaryAccount');
    BuiltValueNullFieldError.checkNotNull(name, 'SpaceCreate', 'name');
  }

  @override
  SpaceCreate rebuild(void Function(SpaceCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpaceCreateBuilder toBuilder() => new SpaceCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpaceCreate &&
        primaryAccount == other.primaryAccount &&
        name == other.name &&
        website == other.website &&
        description == other.description &&
        addressText == other.addressText;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, primaryAccount.hashCode), name.hashCode),
                website.hashCode),
            description.hashCode),
        addressText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpaceCreate')
          ..add('primaryAccount', primaryAccount)
          ..add('name', name)
          ..add('website', website)
          ..add('description', description)
          ..add('addressText', addressText))
        .toString();
  }
}

class SpaceCreateBuilder implements Builder<SpaceCreate, SpaceCreateBuilder> {
  _$SpaceCreate? _$v;

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

  SpaceCreateBuilder() {
    SpaceCreate._defaults(this);
  }

  SpaceCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _primaryAccount = $v.primaryAccount;
      _name = $v.name;
      _website = $v.website;
      _description = $v.description;
      _addressText = $v.addressText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpaceCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpaceCreate;
  }

  @override
  void update(void Function(SpaceCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpaceCreate build() {
    final _$result = _$v ??
        new _$SpaceCreate._(
            primaryAccount: BuiltValueNullFieldError.checkNotNull(
                primaryAccount, 'SpaceCreate', 'primaryAccount'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'SpaceCreate', 'name'),
            website: website,
            description: description,
            addressText: addressText);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
