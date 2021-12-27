// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserInfo extends UserInfo {
  @override
  final String id;
  @override
  final String email;
  @override
  final String? name;
  @override
  final String? givenName;
  @override
  final String? familyName;

  factory _$UserInfo([void Function(UserInfoBuilder)? updates]) =>
      (new UserInfoBuilder()..update(updates)).build();

  _$UserInfo._(
      {required this.id,
      required this.email,
      this.name,
      this.givenName,
      this.familyName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'UserInfo', 'id');
    BuiltValueNullFieldError.checkNotNull(email, 'UserInfo', 'email');
  }

  @override
  UserInfo rebuild(void Function(UserInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoBuilder toBuilder() => new UserInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfo &&
        id == other.id &&
        email == other.email &&
        name == other.name &&
        givenName == other.givenName &&
        familyName == other.familyName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), email.hashCode), name.hashCode),
            givenName.hashCode),
        familyName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserInfo')
          ..add('id', id)
          ..add('email', email)
          ..add('name', name)
          ..add('givenName', givenName)
          ..add('familyName', familyName))
        .toString();
  }
}

class UserInfoBuilder implements Builder<UserInfo, UserInfoBuilder> {
  _$UserInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _givenName;
  String? get givenName => _$this._givenName;
  set givenName(String? givenName) => _$this._givenName = givenName;

  String? _familyName;
  String? get familyName => _$this._familyName;
  set familyName(String? familyName) => _$this._familyName = familyName;

  UserInfoBuilder() {
    UserInfo._defaults(this);
  }

  UserInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _name = $v.name;
      _givenName = $v.givenName;
      _familyName = $v.familyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInfo;
  }

  @override
  void update(void Function(UserInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserInfo build() {
    final _$result = _$v ??
        new _$UserInfo._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'UserInfo', 'id'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'UserInfo', 'email'),
            name: name,
            givenName: givenName,
            familyName: familyName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
