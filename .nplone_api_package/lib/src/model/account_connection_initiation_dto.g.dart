// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_connection_initiation_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountConnectionInitiationDto extends AccountConnectionInitiationDto {
  @override
  final String? redirectUri;

  factory _$AccountConnectionInitiationDto(
          [void Function(AccountConnectionInitiationDtoBuilder)? updates]) =>
      (new AccountConnectionInitiationDtoBuilder()..update(updates)).build();

  _$AccountConnectionInitiationDto._({this.redirectUri}) : super._();

  @override
  AccountConnectionInitiationDto rebuild(
          void Function(AccountConnectionInitiationDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountConnectionInitiationDtoBuilder toBuilder() =>
      new AccountConnectionInitiationDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountConnectionInitiationDto &&
        redirectUri == other.redirectUri;
  }

  @override
  int get hashCode {
    return $jf($jc(0, redirectUri.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountConnectionInitiationDto')
          ..add('redirectUri', redirectUri))
        .toString();
  }
}

class AccountConnectionInitiationDtoBuilder
    implements
        Builder<AccountConnectionInitiationDto,
            AccountConnectionInitiationDtoBuilder> {
  _$AccountConnectionInitiationDto? _$v;

  String? _redirectUri;
  String? get redirectUri => _$this._redirectUri;
  set redirectUri(String? redirectUri) => _$this._redirectUri = redirectUri;

  AccountConnectionInitiationDtoBuilder() {
    AccountConnectionInitiationDto._defaults(this);
  }

  AccountConnectionInitiationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _redirectUri = $v.redirectUri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountConnectionInitiationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountConnectionInitiationDto;
  }

  @override
  void update(void Function(AccountConnectionInitiationDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountConnectionInitiationDto build() {
    final _$result =
        _$v ?? new _$AccountConnectionInitiationDto._(redirectUri: redirectUri);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
