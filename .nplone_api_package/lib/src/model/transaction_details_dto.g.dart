// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_details_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionDetailsDtoTypeEnum _$transactionDetailsDtoTypeEnum_UNDEFINED =
    const TransactionDetailsDtoTypeEnum._('UNDEFINED');
const TransactionDetailsDtoTypeEnum
    _$transactionDetailsDtoTypeEnum_CREDIT_CARD =
    const TransactionDetailsDtoTypeEnum._('CREDIT_CARD');
const TransactionDetailsDtoTypeEnum _$transactionDetailsDtoTypeEnum_PAYMENT =
    const TransactionDetailsDtoTypeEnum._('PAYMENT');
const TransactionDetailsDtoTypeEnum _$transactionDetailsDtoTypeEnum_WITHDRAWAL =
    const TransactionDetailsDtoTypeEnum._('WITHDRAWAL');
const TransactionDetailsDtoTypeEnum _$transactionDetailsDtoTypeEnum_DEFAULT =
    const TransactionDetailsDtoTypeEnum._('DEFAULT');
const TransactionDetailsDtoTypeEnum _$transactionDetailsDtoTypeEnum_TRANSFER =
    const TransactionDetailsDtoTypeEnum._('TRANSFER');

TransactionDetailsDtoTypeEnum _$transactionDetailsDtoTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'UNDEFINED':
      return _$transactionDetailsDtoTypeEnum_UNDEFINED;
    case 'CREDIT_CARD':
      return _$transactionDetailsDtoTypeEnum_CREDIT_CARD;
    case 'PAYMENT':
      return _$transactionDetailsDtoTypeEnum_PAYMENT;
    case 'WITHDRAWAL':
      return _$transactionDetailsDtoTypeEnum_WITHDRAWAL;
    case 'DEFAULT':
      return _$transactionDetailsDtoTypeEnum_DEFAULT;
    case 'TRANSFER':
      return _$transactionDetailsDtoTypeEnum_TRANSFER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TransactionDetailsDtoTypeEnum>
    _$transactionDetailsDtoTypeEnumValues = new BuiltSet<
        TransactionDetailsDtoTypeEnum>(const <TransactionDetailsDtoTypeEnum>[
  _$transactionDetailsDtoTypeEnum_UNDEFINED,
  _$transactionDetailsDtoTypeEnum_CREDIT_CARD,
  _$transactionDetailsDtoTypeEnum_PAYMENT,
  _$transactionDetailsDtoTypeEnum_WITHDRAWAL,
  _$transactionDetailsDtoTypeEnum_DEFAULT,
  _$transactionDetailsDtoTypeEnum_TRANSFER,
]);

Serializer<TransactionDetailsDtoTypeEnum>
    _$transactionDetailsDtoTypeEnumSerializer =
    new _$TransactionDetailsDtoTypeEnumSerializer();

class _$TransactionDetailsDtoTypeEnumSerializer
    implements PrimitiveSerializer<TransactionDetailsDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UNDEFINED': 'UNDEFINED',
    'CREDIT_CARD': 'CREDIT_CARD',
    'PAYMENT': 'PAYMENT',
    'WITHDRAWAL': 'WITHDRAWAL',
    'DEFAULT': 'DEFAULT',
    'TRANSFER': 'TRANSFER',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UNDEFINED': 'UNDEFINED',
    'CREDIT_CARD': 'CREDIT_CARD',
    'PAYMENT': 'PAYMENT',
    'WITHDRAWAL': 'WITHDRAWAL',
    'DEFAULT': 'DEFAULT',
    'TRANSFER': 'TRANSFER',
  };

  @override
  final Iterable<Type> types = const <Type>[TransactionDetailsDtoTypeEnum];
  @override
  final String wireName = 'TransactionDetailsDtoTypeEnum';

  @override
  Object serialize(
          Serializers serializers, TransactionDetailsDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionDetailsDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionDetailsDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionDetailsDto extends TransactionDetailsDto {
  @override
  final String id;
  @override
  final AccountBalance amount;
  @override
  final DateTime bookedAt;
  @override
  final String? description;
  @override
  final Merchant? merchant;
  @override
  final TransactionDetailsDtoTypeEnum? type;
  @override
  final TransactionAccountDetails? accountDetails;
  @override
  final UserSummaryDto? originator;
  @override
  final bool published;
  @override
  final UserSummaryDto? publisher;
  @override
  final TransactionViewConfiguration? viewConfiguration;

  factory _$TransactionDetailsDto(
          [void Function(TransactionDetailsDtoBuilder)? updates]) =>
      (new TransactionDetailsDtoBuilder()..update(updates)).build();

  _$TransactionDetailsDto._(
      {required this.id,
      required this.amount,
      required this.bookedAt,
      this.description,
      this.merchant,
      this.type,
      this.accountDetails,
      this.originator,
      required this.published,
      this.publisher,
      this.viewConfiguration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'TransactionDetailsDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        amount, 'TransactionDetailsDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        bookedAt, 'TransactionDetailsDto', 'bookedAt');
    BuiltValueNullFieldError.checkNotNull(
        published, 'TransactionDetailsDto', 'published');
  }

  @override
  TransactionDetailsDto rebuild(
          void Function(TransactionDetailsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionDetailsDtoBuilder toBuilder() =>
      new TransactionDetailsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionDetailsDto &&
        id == other.id &&
        amount == other.amount &&
        bookedAt == other.bookedAt &&
        description == other.description &&
        merchant == other.merchant &&
        type == other.type &&
        accountDetails == other.accountDetails &&
        originator == other.originator &&
        published == other.published &&
        publisher == other.publisher &&
        viewConfiguration == other.viewConfiguration;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, id.hashCode),
                                            amount.hashCode),
                                        bookedAt.hashCode),
                                    description.hashCode),
                                merchant.hashCode),
                            type.hashCode),
                        accountDetails.hashCode),
                    originator.hashCode),
                published.hashCode),
            publisher.hashCode),
        viewConfiguration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionDetailsDto')
          ..add('id', id)
          ..add('amount', amount)
          ..add('bookedAt', bookedAt)
          ..add('description', description)
          ..add('merchant', merchant)
          ..add('type', type)
          ..add('accountDetails', accountDetails)
          ..add('originator', originator)
          ..add('published', published)
          ..add('publisher', publisher)
          ..add('viewConfiguration', viewConfiguration))
        .toString();
  }
}

class TransactionDetailsDtoBuilder
    implements Builder<TransactionDetailsDto, TransactionDetailsDtoBuilder> {
  _$TransactionDetailsDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AccountBalanceBuilder? _amount;
  AccountBalanceBuilder get amount =>
      _$this._amount ??= new AccountBalanceBuilder();
  set amount(AccountBalanceBuilder? amount) => _$this._amount = amount;

  DateTime? _bookedAt;
  DateTime? get bookedAt => _$this._bookedAt;
  set bookedAt(DateTime? bookedAt) => _$this._bookedAt = bookedAt;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  MerchantBuilder? _merchant;
  MerchantBuilder get merchant => _$this._merchant ??= new MerchantBuilder();
  set merchant(MerchantBuilder? merchant) => _$this._merchant = merchant;

  TransactionDetailsDtoTypeEnum? _type;
  TransactionDetailsDtoTypeEnum? get type => _$this._type;
  set type(TransactionDetailsDtoTypeEnum? type) => _$this._type = type;

  TransactionAccountDetailsBuilder? _accountDetails;
  TransactionAccountDetailsBuilder get accountDetails =>
      _$this._accountDetails ??= new TransactionAccountDetailsBuilder();
  set accountDetails(TransactionAccountDetailsBuilder? accountDetails) =>
      _$this._accountDetails = accountDetails;

  UserSummaryDtoBuilder? _originator;
  UserSummaryDtoBuilder get originator =>
      _$this._originator ??= new UserSummaryDtoBuilder();
  set originator(UserSummaryDtoBuilder? originator) =>
      _$this._originator = originator;

  bool? _published;
  bool? get published => _$this._published;
  set published(bool? published) => _$this._published = published;

  UserSummaryDtoBuilder? _publisher;
  UserSummaryDtoBuilder get publisher =>
      _$this._publisher ??= new UserSummaryDtoBuilder();
  set publisher(UserSummaryDtoBuilder? publisher) =>
      _$this._publisher = publisher;

  TransactionViewConfigurationBuilder? _viewConfiguration;
  TransactionViewConfigurationBuilder get viewConfiguration =>
      _$this._viewConfiguration ??= new TransactionViewConfigurationBuilder();
  set viewConfiguration(
          TransactionViewConfigurationBuilder? viewConfiguration) =>
      _$this._viewConfiguration = viewConfiguration;

  TransactionDetailsDtoBuilder() {
    TransactionDetailsDto._defaults(this);
  }

  TransactionDetailsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _amount = $v.amount.toBuilder();
      _bookedAt = $v.bookedAt;
      _description = $v.description;
      _merchant = $v.merchant?.toBuilder();
      _type = $v.type;
      _accountDetails = $v.accountDetails?.toBuilder();
      _originator = $v.originator?.toBuilder();
      _published = $v.published;
      _publisher = $v.publisher?.toBuilder();
      _viewConfiguration = $v.viewConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionDetailsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionDetailsDto;
  }

  @override
  void update(void Function(TransactionDetailsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionDetailsDto build() {
    _$TransactionDetailsDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionDetailsDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'TransactionDetailsDto', 'id'),
              amount: amount.build(),
              bookedAt: BuiltValueNullFieldError.checkNotNull(
                  bookedAt, 'TransactionDetailsDto', 'bookedAt'),
              description: description,
              merchant: _merchant?.build(),
              type: type,
              accountDetails: _accountDetails?.build(),
              originator: _originator?.build(),
              published: BuiltValueNullFieldError.checkNotNull(
                  published, 'TransactionDetailsDto', 'published'),
              publisher: _publisher?.build(),
              viewConfiguration: _viewConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'amount';
        amount.build();

        _$failedField = 'merchant';
        _merchant?.build();

        _$failedField = 'accountDetails';
        _accountDetails?.build();
        _$failedField = 'originator';
        _originator?.build();

        _$failedField = 'publisher';
        _publisher?.build();
        _$failedField = 'viewConfiguration';
        _viewConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TransactionDetailsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
