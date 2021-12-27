// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionItemDtoTypeEnum _$transactionItemDtoTypeEnum_UNDEFINED =
    const TransactionItemDtoTypeEnum._('UNDEFINED');
const TransactionItemDtoTypeEnum _$transactionItemDtoTypeEnum_CREDIT_CARD =
    const TransactionItemDtoTypeEnum._('CREDIT_CARD');
const TransactionItemDtoTypeEnum _$transactionItemDtoTypeEnum_PAYMENT =
    const TransactionItemDtoTypeEnum._('PAYMENT');
const TransactionItemDtoTypeEnum _$transactionItemDtoTypeEnum_WITHDRAWAL =
    const TransactionItemDtoTypeEnum._('WITHDRAWAL');
const TransactionItemDtoTypeEnum _$transactionItemDtoTypeEnum_DEFAULT =
    const TransactionItemDtoTypeEnum._('DEFAULT');
const TransactionItemDtoTypeEnum _$transactionItemDtoTypeEnum_TRANSFER =
    const TransactionItemDtoTypeEnum._('TRANSFER');

TransactionItemDtoTypeEnum _$transactionItemDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'UNDEFINED':
      return _$transactionItemDtoTypeEnum_UNDEFINED;
    case 'CREDIT_CARD':
      return _$transactionItemDtoTypeEnum_CREDIT_CARD;
    case 'PAYMENT':
      return _$transactionItemDtoTypeEnum_PAYMENT;
    case 'WITHDRAWAL':
      return _$transactionItemDtoTypeEnum_WITHDRAWAL;
    case 'DEFAULT':
      return _$transactionItemDtoTypeEnum_DEFAULT;
    case 'TRANSFER':
      return _$transactionItemDtoTypeEnum_TRANSFER;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TransactionItemDtoTypeEnum> _$transactionItemDtoTypeEnumValues =
    new BuiltSet<TransactionItemDtoTypeEnum>(const <TransactionItemDtoTypeEnum>[
  _$transactionItemDtoTypeEnum_UNDEFINED,
  _$transactionItemDtoTypeEnum_CREDIT_CARD,
  _$transactionItemDtoTypeEnum_PAYMENT,
  _$transactionItemDtoTypeEnum_WITHDRAWAL,
  _$transactionItemDtoTypeEnum_DEFAULT,
  _$transactionItemDtoTypeEnum_TRANSFER,
]);

Serializer<TransactionItemDtoTypeEnum> _$transactionItemDtoTypeEnumSerializer =
    new _$TransactionItemDtoTypeEnumSerializer();

class _$TransactionItemDtoTypeEnumSerializer
    implements PrimitiveSerializer<TransactionItemDtoTypeEnum> {
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
  final Iterable<Type> types = const <Type>[TransactionItemDtoTypeEnum];
  @override
  final String wireName = 'TransactionItemDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, TransactionItemDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TransactionItemDtoTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TransactionItemDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TransactionItemDto extends TransactionItemDto {
  @override
  final String id;
  @override
  final String accountId;
  @override
  final AccountBalance amount;
  @override
  final DateTime bookedAt;
  @override
  final String? description;
  @override
  final Merchant? merchant;
  @override
  final TransactionItemDtoTypeEnum type;
  @override
  final bool posted;
  @override
  final int comments;
  @override
  final int files;

  factory _$TransactionItemDto(
          [void Function(TransactionItemDtoBuilder)? updates]) =>
      (new TransactionItemDtoBuilder()..update(updates)).build();

  _$TransactionItemDto._(
      {required this.id,
      required this.accountId,
      required this.amount,
      required this.bookedAt,
      this.description,
      this.merchant,
      required this.type,
      required this.posted,
      required this.comments,
      required this.files})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'TransactionItemDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        accountId, 'TransactionItemDto', 'accountId');
    BuiltValueNullFieldError.checkNotNull(
        amount, 'TransactionItemDto', 'amount');
    BuiltValueNullFieldError.checkNotNull(
        bookedAt, 'TransactionItemDto', 'bookedAt');
    BuiltValueNullFieldError.checkNotNull(type, 'TransactionItemDto', 'type');
    BuiltValueNullFieldError.checkNotNull(
        posted, 'TransactionItemDto', 'posted');
    BuiltValueNullFieldError.checkNotNull(
        comments, 'TransactionItemDto', 'comments');
    BuiltValueNullFieldError.checkNotNull(files, 'TransactionItemDto', 'files');
  }

  @override
  TransactionItemDto rebuild(
          void Function(TransactionItemDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionItemDtoBuilder toBuilder() =>
      new TransactionItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionItemDto &&
        id == other.id &&
        accountId == other.accountId &&
        amount == other.amount &&
        bookedAt == other.bookedAt &&
        description == other.description &&
        merchant == other.merchant &&
        type == other.type &&
        posted == other.posted &&
        comments == other.comments &&
        files == other.files;
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
                                    $jc($jc(0, id.hashCode),
                                        accountId.hashCode),
                                    amount.hashCode),
                                bookedAt.hashCode),
                            description.hashCode),
                        merchant.hashCode),
                    type.hashCode),
                posted.hashCode),
            comments.hashCode),
        files.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionItemDto')
          ..add('id', id)
          ..add('accountId', accountId)
          ..add('amount', amount)
          ..add('bookedAt', bookedAt)
          ..add('description', description)
          ..add('merchant', merchant)
          ..add('type', type)
          ..add('posted', posted)
          ..add('comments', comments)
          ..add('files', files))
        .toString();
  }
}

class TransactionItemDtoBuilder
    implements Builder<TransactionItemDto, TransactionItemDtoBuilder> {
  _$TransactionItemDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

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

  TransactionItemDtoTypeEnum? _type;
  TransactionItemDtoTypeEnum? get type => _$this._type;
  set type(TransactionItemDtoTypeEnum? type) => _$this._type = type;

  bool? _posted;
  bool? get posted => _$this._posted;
  set posted(bool? posted) => _$this._posted = posted;

  int? _comments;
  int? get comments => _$this._comments;
  set comments(int? comments) => _$this._comments = comments;

  int? _files;
  int? get files => _$this._files;
  set files(int? files) => _$this._files = files;

  TransactionItemDtoBuilder() {
    TransactionItemDto._defaults(this);
  }

  TransactionItemDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _accountId = $v.accountId;
      _amount = $v.amount.toBuilder();
      _bookedAt = $v.bookedAt;
      _description = $v.description;
      _merchant = $v.merchant?.toBuilder();
      _type = $v.type;
      _posted = $v.posted;
      _comments = $v.comments;
      _files = $v.files;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionItemDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionItemDto;
  }

  @override
  void update(void Function(TransactionItemDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionItemDto build() {
    _$TransactionItemDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionItemDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'TransactionItemDto', 'id'),
              accountId: BuiltValueNullFieldError.checkNotNull(
                  accountId, 'TransactionItemDto', 'accountId'),
              amount: amount.build(),
              bookedAt: BuiltValueNullFieldError.checkNotNull(
                  bookedAt, 'TransactionItemDto', 'bookedAt'),
              description: description,
              merchant: _merchant?.build(),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'TransactionItemDto', 'type'),
              posted: BuiltValueNullFieldError.checkNotNull(
                  posted, 'TransactionItemDto', 'posted'),
              comments: BuiltValueNullFieldError.checkNotNull(
                  comments, 'TransactionItemDto', 'comments'),
              files: BuiltValueNullFieldError.checkNotNull(
                  files, 'TransactionItemDto', 'files'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'amount';
        amount.build();

        _$failedField = 'merchant';
        _merchant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TransactionItemDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
