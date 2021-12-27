// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_banking_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpaceBankingInfo extends SpaceBankingInfo {
  @override
  final AccountBalance? total;
  @override
  final Account? primaryAccount;
  @override
  final BuiltList<Account>? linkedAccounts;

  factory _$SpaceBankingInfo(
          [void Function(SpaceBankingInfoBuilder)? updates]) =>
      (new SpaceBankingInfoBuilder()..update(updates)).build();

  _$SpaceBankingInfo._({this.total, this.primaryAccount, this.linkedAccounts})
      : super._();

  @override
  SpaceBankingInfo rebuild(void Function(SpaceBankingInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpaceBankingInfoBuilder toBuilder() =>
      new SpaceBankingInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpaceBankingInfo &&
        total == other.total &&
        primaryAccount == other.primaryAccount &&
        linkedAccounts == other.linkedAccounts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, total.hashCode), primaryAccount.hashCode),
        linkedAccounts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpaceBankingInfo')
          ..add('total', total)
          ..add('primaryAccount', primaryAccount)
          ..add('linkedAccounts', linkedAccounts))
        .toString();
  }
}

class SpaceBankingInfoBuilder
    implements Builder<SpaceBankingInfo, SpaceBankingInfoBuilder> {
  _$SpaceBankingInfo? _$v;

  AccountBalanceBuilder? _total;
  AccountBalanceBuilder get total =>
      _$this._total ??= new AccountBalanceBuilder();
  set total(AccountBalanceBuilder? total) => _$this._total = total;

  AccountBuilder? _primaryAccount;
  AccountBuilder get primaryAccount =>
      _$this._primaryAccount ??= new AccountBuilder();
  set primaryAccount(AccountBuilder? primaryAccount) =>
      _$this._primaryAccount = primaryAccount;

  ListBuilder<Account>? _linkedAccounts;
  ListBuilder<Account> get linkedAccounts =>
      _$this._linkedAccounts ??= new ListBuilder<Account>();
  set linkedAccounts(ListBuilder<Account>? linkedAccounts) =>
      _$this._linkedAccounts = linkedAccounts;

  SpaceBankingInfoBuilder() {
    SpaceBankingInfo._defaults(this);
  }

  SpaceBankingInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total?.toBuilder();
      _primaryAccount = $v.primaryAccount?.toBuilder();
      _linkedAccounts = $v.linkedAccounts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpaceBankingInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpaceBankingInfo;
  }

  @override
  void update(void Function(SpaceBankingInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpaceBankingInfo build() {
    _$SpaceBankingInfo _$result;
    try {
      _$result = _$v ??
          new _$SpaceBankingInfo._(
              total: _total?.build(),
              primaryAccount: _primaryAccount?.build(),
              linkedAccounts: _linkedAccounts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'total';
        _total?.build();
        _$failedField = 'primaryAccount';
        _primaryAccount?.build();
        _$failedField = 'linkedAccounts';
        _linkedAccounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SpaceBankingInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
