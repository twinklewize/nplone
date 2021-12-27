// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_account_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionAccountDetails extends TransactionAccountDetails {
  @override
  final String financialInstitutionId;
  @override
  final String iban;

  factory _$TransactionAccountDetails(
          [void Function(TransactionAccountDetailsBuilder)? updates]) =>
      (new TransactionAccountDetailsBuilder()..update(updates)).build();

  _$TransactionAccountDetails._(
      {required this.financialInstitutionId, required this.iban})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(financialInstitutionId,
        'TransactionAccountDetails', 'financialInstitutionId');
    BuiltValueNullFieldError.checkNotNull(
        iban, 'TransactionAccountDetails', 'iban');
  }

  @override
  TransactionAccountDetails rebuild(
          void Function(TransactionAccountDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionAccountDetailsBuilder toBuilder() =>
      new TransactionAccountDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionAccountDetails &&
        financialInstitutionId == other.financialInstitutionId &&
        iban == other.iban;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, financialInstitutionId.hashCode), iban.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionAccountDetails')
          ..add('financialInstitutionId', financialInstitutionId)
          ..add('iban', iban))
        .toString();
  }
}

class TransactionAccountDetailsBuilder
    implements
        Builder<TransactionAccountDetails, TransactionAccountDetailsBuilder> {
  _$TransactionAccountDetails? _$v;

  String? _financialInstitutionId;
  String? get financialInstitutionId => _$this._financialInstitutionId;
  set financialInstitutionId(String? financialInstitutionId) =>
      _$this._financialInstitutionId = financialInstitutionId;

  String? _iban;
  String? get iban => _$this._iban;
  set iban(String? iban) => _$this._iban = iban;

  TransactionAccountDetailsBuilder() {
    TransactionAccountDetails._defaults(this);
  }

  TransactionAccountDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _financialInstitutionId = $v.financialInstitutionId;
      _iban = $v.iban;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionAccountDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionAccountDetails;
  }

  @override
  void update(void Function(TransactionAccountDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionAccountDetails build() {
    final _$result = _$v ??
        new _$TransactionAccountDetails._(
            financialInstitutionId: BuiltValueNullFieldError.checkNotNull(
                financialInstitutionId,
                'TransactionAccountDetails',
                'financialInstitutionId'),
            iban: BuiltValueNullFieldError.checkNotNull(
                iban, 'TransactionAccountDetails', 'iban'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
