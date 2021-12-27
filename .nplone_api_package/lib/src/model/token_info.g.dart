// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenInfo extends TokenInfo {
  @override
  final String accessToken;
  @override
  final String userId;

  factory _$TokenInfo([void Function(TokenInfoBuilder)? updates]) =>
      (new TokenInfoBuilder()..update(updates)).build();

  _$TokenInfo._({required this.accessToken, required this.userId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, 'TokenInfo', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(userId, 'TokenInfo', 'userId');
  }

  @override
  TokenInfo rebuild(void Function(TokenInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenInfoBuilder toBuilder() => new TokenInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenInfo &&
        accessToken == other.accessToken &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, accessToken.hashCode), userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TokenInfo')
          ..add('accessToken', accessToken)
          ..add('userId', userId))
        .toString();
  }
}

class TokenInfoBuilder implements Builder<TokenInfo, TokenInfoBuilder> {
  _$TokenInfo? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  TokenInfoBuilder() {
    TokenInfo._defaults(this);
  }

  TokenInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenInfo;
  }

  @override
  void update(void Function(TokenInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TokenInfo build() {
    final _$result = _$v ??
        new _$TokenInfo._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, 'TokenInfo', 'accessToken'),
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, 'TokenInfo', 'userId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
