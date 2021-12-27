// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_identifiers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountIdentifiers extends AccountIdentifiers {
  @override
  final String? iban;
  @override
  final String? bic;

  factory _$AccountIdentifiers(
          [void Function(AccountIdentifiersBuilder)? updates]) =>
      (new AccountIdentifiersBuilder()..update(updates)).build();

  _$AccountIdentifiers._({this.iban, this.bic}) : super._();

  @override
  AccountIdentifiers rebuild(
          void Function(AccountIdentifiersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountIdentifiersBuilder toBuilder() =>
      new AccountIdentifiersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountIdentifiers &&
        iban == other.iban &&
        bic == other.bic;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, iban.hashCode), bic.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountIdentifiers')
          ..add('iban', iban)
          ..add('bic', bic))
        .toString();
  }
}

class AccountIdentifiersBuilder
    implements Builder<AccountIdentifiers, AccountIdentifiersBuilder> {
  _$AccountIdentifiers? _$v;

  String? _iban;
  String? get iban => _$this._iban;
  set iban(String? iban) => _$this._iban = iban;

  String? _bic;
  String? get bic => _$this._bic;
  set bic(String? bic) => _$this._bic = bic;

  AccountIdentifiersBuilder() {
    AccountIdentifiers._defaults(this);
  }

  AccountIdentifiersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _iban = $v.iban;
      _bic = $v.bic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountIdentifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountIdentifiers;
  }

  @override
  void update(void Function(AccountIdentifiersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountIdentifiers build() {
    final _$result = _$v ?? new _$AccountIdentifiers._(iban: iban, bic: bic);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
