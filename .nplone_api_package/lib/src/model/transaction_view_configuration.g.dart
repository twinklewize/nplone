// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_view_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionViewConfiguration extends TransactionViewConfiguration {
  @override
  final bool showDescription;
  @override
  final bool showType;
  @override
  final bool showOriginator;
  @override
  final bool showReceiver;
  @override
  final bool showAccount;

  factory _$TransactionViewConfiguration(
          [void Function(TransactionViewConfigurationBuilder)? updates]) =>
      (new TransactionViewConfigurationBuilder()..update(updates)).build();

  _$TransactionViewConfiguration._(
      {required this.showDescription,
      required this.showType,
      required this.showOriginator,
      required this.showReceiver,
      required this.showAccount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        showDescription, 'TransactionViewConfiguration', 'showDescription');
    BuiltValueNullFieldError.checkNotNull(
        showType, 'TransactionViewConfiguration', 'showType');
    BuiltValueNullFieldError.checkNotNull(
        showOriginator, 'TransactionViewConfiguration', 'showOriginator');
    BuiltValueNullFieldError.checkNotNull(
        showReceiver, 'TransactionViewConfiguration', 'showReceiver');
    BuiltValueNullFieldError.checkNotNull(
        showAccount, 'TransactionViewConfiguration', 'showAccount');
  }

  @override
  TransactionViewConfiguration rebuild(
          void Function(TransactionViewConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionViewConfigurationBuilder toBuilder() =>
      new TransactionViewConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionViewConfiguration &&
        showDescription == other.showDescription &&
        showType == other.showType &&
        showOriginator == other.showOriginator &&
        showReceiver == other.showReceiver &&
        showAccount == other.showAccount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, showDescription.hashCode), showType.hashCode),
                showOriginator.hashCode),
            showReceiver.hashCode),
        showAccount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionViewConfiguration')
          ..add('showDescription', showDescription)
          ..add('showType', showType)
          ..add('showOriginator', showOriginator)
          ..add('showReceiver', showReceiver)
          ..add('showAccount', showAccount))
        .toString();
  }
}

class TransactionViewConfigurationBuilder
    implements
        Builder<TransactionViewConfiguration,
            TransactionViewConfigurationBuilder> {
  _$TransactionViewConfiguration? _$v;

  bool? _showDescription;
  bool? get showDescription => _$this._showDescription;
  set showDescription(bool? showDescription) =>
      _$this._showDescription = showDescription;

  bool? _showType;
  bool? get showType => _$this._showType;
  set showType(bool? showType) => _$this._showType = showType;

  bool? _showOriginator;
  bool? get showOriginator => _$this._showOriginator;
  set showOriginator(bool? showOriginator) =>
      _$this._showOriginator = showOriginator;

  bool? _showReceiver;
  bool? get showReceiver => _$this._showReceiver;
  set showReceiver(bool? showReceiver) => _$this._showReceiver = showReceiver;

  bool? _showAccount;
  bool? get showAccount => _$this._showAccount;
  set showAccount(bool? showAccount) => _$this._showAccount = showAccount;

  TransactionViewConfigurationBuilder() {
    TransactionViewConfiguration._defaults(this);
  }

  TransactionViewConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showDescription = $v.showDescription;
      _showType = $v.showType;
      _showOriginator = $v.showOriginator;
      _showReceiver = $v.showReceiver;
      _showAccount = $v.showAccount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionViewConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionViewConfiguration;
  }

  @override
  void update(void Function(TransactionViewConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionViewConfiguration build() {
    final _$result = _$v ??
        new _$TransactionViewConfiguration._(
            showDescription: BuiltValueNullFieldError.checkNotNull(
                showDescription,
                'TransactionViewConfiguration',
                'showDescription'),
            showType: BuiltValueNullFieldError.checkNotNull(
                showType, 'TransactionViewConfiguration', 'showType'),
            showOriginator: BuiltValueNullFieldError.checkNotNull(
                showOriginator,
                'TransactionViewConfiguration',
                'showOriginator'),
            showReceiver: BuiltValueNullFieldError.checkNotNull(
                showReceiver, 'TransactionViewConfiguration', 'showReceiver'),
            showAccount: BuiltValueNullFieldError.checkNotNull(
                showAccount, 'TransactionViewConfiguration', 'showAccount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
