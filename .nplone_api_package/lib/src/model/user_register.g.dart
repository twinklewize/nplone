// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRegister extends UserRegister {
  @override
  final String email;
  @override
  final String password;
  @override
  final String country;

  factory _$UserRegister([void Function(UserRegisterBuilder)? updates]) =>
      (new UserRegisterBuilder()..update(updates)).build();

  _$UserRegister._(
      {required this.email, required this.password, required this.country})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(email, 'UserRegister', 'email');
    BuiltValueNullFieldError.checkNotNull(password, 'UserRegister', 'password');
    BuiltValueNullFieldError.checkNotNull(country, 'UserRegister', 'country');
  }

  @override
  UserRegister rebuild(void Function(UserRegisterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRegisterBuilder toBuilder() => new UserRegisterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRegister &&
        email == other.email &&
        password == other.password &&
        country == other.country;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, email.hashCode), password.hashCode), country.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRegister')
          ..add('email', email)
          ..add('password', password)
          ..add('country', country))
        .toString();
  }
}

class UserRegisterBuilder
    implements Builder<UserRegister, UserRegisterBuilder> {
  _$UserRegister? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  UserRegisterBuilder() {
    UserRegister._defaults(this);
  }

  UserRegisterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRegister other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRegister;
  }

  @override
  void update(void Function(UserRegisterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRegister build() {
    final _$result = _$v ??
        new _$UserRegister._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'UserRegister', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'UserRegister', 'password'),
            country: BuiltValueNullFieldError.checkNotNull(
                country, 'UserRegister', 'country'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
