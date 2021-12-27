// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GoogleToken extends GoogleToken {
  @override
  final String token;
  @override
  final String country;

  factory _$GoogleToken([void Function(GoogleTokenBuilder)? updates]) =>
      (new GoogleTokenBuilder()..update(updates)).build();

  _$GoogleToken._({required this.token, required this.country}) : super._() {
    BuiltValueNullFieldError.checkNotNull(token, 'GoogleToken', 'token');
    BuiltValueNullFieldError.checkNotNull(country, 'GoogleToken', 'country');
  }

  @override
  GoogleToken rebuild(void Function(GoogleTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoogleTokenBuilder toBuilder() => new GoogleTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleToken &&
        token == other.token &&
        country == other.country;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, token.hashCode), country.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GoogleToken')
          ..add('token', token)
          ..add('country', country))
        .toString();
  }
}

class GoogleTokenBuilder implements Builder<GoogleToken, GoogleTokenBuilder> {
  _$GoogleToken? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  GoogleTokenBuilder() {
    GoogleToken._defaults(this);
  }

  GoogleTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoogleToken;
  }

  @override
  void update(void Function(GoogleTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GoogleToken build() {
    final _$result = _$v ??
        new _$GoogleToken._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'GoogleToken', 'token'),
            country: BuiltValueNullFieldError.checkNotNull(
                country, 'GoogleToken', 'country'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
