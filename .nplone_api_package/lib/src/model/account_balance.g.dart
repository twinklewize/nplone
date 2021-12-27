// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_balance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountBalance extends AccountBalance {
  @override
  final String currencyCode;
  @override
  final int scale;
  @override
  final int unscaledValue;

  factory _$AccountBalance([void Function(AccountBalanceBuilder)? updates]) =>
      (new AccountBalanceBuilder()..update(updates)).build();

  _$AccountBalance._(
      {required this.currencyCode,
      required this.scale,
      required this.unscaledValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        currencyCode, 'AccountBalance', 'currencyCode');
    BuiltValueNullFieldError.checkNotNull(scale, 'AccountBalance', 'scale');
    BuiltValueNullFieldError.checkNotNull(
        unscaledValue, 'AccountBalance', 'unscaledValue');
  }

  @override
  AccountBalance rebuild(void Function(AccountBalanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBalanceBuilder toBuilder() =>
      new AccountBalanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountBalance &&
        currencyCode == other.currencyCode &&
        scale == other.scale &&
        unscaledValue == other.unscaledValue;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, currencyCode.hashCode), scale.hashCode),
        unscaledValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountBalance')
          ..add('currencyCode', currencyCode)
          ..add('scale', scale)
          ..add('unscaledValue', unscaledValue))
        .toString();
  }
}

class AccountBalanceBuilder
    implements Builder<AccountBalance, AccountBalanceBuilder> {
  _$AccountBalance? _$v;

  String? _currencyCode;
  String? get currencyCode => _$this._currencyCode;
  set currencyCode(String? currencyCode) => _$this._currencyCode = currencyCode;

  int? _scale;
  int? get scale => _$this._scale;
  set scale(int? scale) => _$this._scale = scale;

  int? _unscaledValue;
  int? get unscaledValue => _$this._unscaledValue;
  set unscaledValue(int? unscaledValue) =>
      _$this._unscaledValue = unscaledValue;

  AccountBalanceBuilder() {
    AccountBalance._defaults(this);
  }

  AccountBalanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencyCode = $v.currencyCode;
      _scale = $v.scale;
      _unscaledValue = $v.unscaledValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountBalance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountBalance;
  }

  @override
  void update(void Function(AccountBalanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountBalance build() {
    final _$result = _$v ??
        new _$AccountBalance._(
            currencyCode: BuiltValueNullFieldError.checkNotNull(
                currencyCode, 'AccountBalance', 'currencyCode'),
            scale: BuiltValueNullFieldError.checkNotNull(
                scale, 'AccountBalance', 'scale'),
            unscaledValue: BuiltValueNullFieldError.checkNotNull(
                unscaledValue, 'AccountBalance', 'unscaledValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
