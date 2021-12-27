// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserLogin extends UserLogin {
  @override
  final String email;
  @override
  final String password;

  factory _$UserLogin([void Function(UserLoginBuilder)? updates]) =>
      (new UserLoginBuilder()..update(updates)).build();

  _$UserLogin._({required this.email, required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, 'UserLogin', 'email');
    BuiltValueNullFieldError.checkNotNull(password, 'UserLogin', 'password');
  }

  @override
  UserLogin rebuild(void Function(UserLoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLoginBuilder toBuilder() => new UserLoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLogin &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserLogin')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class UserLoginBuilder implements Builder<UserLogin, UserLoginBuilder> {
  _$UserLogin? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  UserLoginBuilder() {
    UserLogin._defaults(this);
  }

  UserLoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLogin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserLogin;
  }

  @override
  void update(void Function(UserLoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserLogin build() {
    final _$result = _$v ??
        new _$UserLogin._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'UserLogin', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'UserLogin', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
