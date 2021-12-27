// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_list_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionListDto extends TransactionListDto {
  @override
  final BuiltList<TransactionItemDto> transactions;
  @override
  final String nextPageToken;

  factory _$TransactionListDto(
          [void Function(TransactionListDtoBuilder)? updates]) =>
      (new TransactionListDtoBuilder()..update(updates)).build();

  _$TransactionListDto._(
      {required this.transactions, required this.nextPageToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transactions, 'TransactionListDto', 'transactions');
    BuiltValueNullFieldError.checkNotNull(
        nextPageToken, 'TransactionListDto', 'nextPageToken');
  }

  @override
  TransactionListDto rebuild(
          void Function(TransactionListDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionListDtoBuilder toBuilder() =>
      new TransactionListDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionListDto &&
        transactions == other.transactions &&
        nextPageToken == other.nextPageToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, transactions.hashCode), nextPageToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionListDto')
          ..add('transactions', transactions)
          ..add('nextPageToken', nextPageToken))
        .toString();
  }
}

class TransactionListDtoBuilder
    implements Builder<TransactionListDto, TransactionListDtoBuilder> {
  _$TransactionListDto? _$v;

  ListBuilder<TransactionItemDto>? _transactions;
  ListBuilder<TransactionItemDto> get transactions =>
      _$this._transactions ??= new ListBuilder<TransactionItemDto>();
  set transactions(ListBuilder<TransactionItemDto>? transactions) =>
      _$this._transactions = transactions;

  String? _nextPageToken;
  String? get nextPageToken => _$this._nextPageToken;
  set nextPageToken(String? nextPageToken) =>
      _$this._nextPageToken = nextPageToken;

  TransactionListDtoBuilder() {
    TransactionListDto._defaults(this);
  }

  TransactionListDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactions = $v.transactions.toBuilder();
      _nextPageToken = $v.nextPageToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionListDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionListDto;
  }

  @override
  void update(void Function(TransactionListDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionListDto build() {
    _$TransactionListDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionListDto._(
              transactions: transactions.build(),
              nextPageToken: BuiltValueNullFieldError.checkNotNull(
                  nextPageToken, 'TransactionListDto', 'nextPageToken'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transactions';
        transactions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TransactionListDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
