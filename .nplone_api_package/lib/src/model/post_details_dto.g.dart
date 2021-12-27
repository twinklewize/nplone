// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_details_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostDetailsDtoTypeEnum _$postDetailsDtoTypeEnum_NEWS =
    const PostDetailsDtoTypeEnum._('NEWS');

PostDetailsDtoTypeEnum _$postDetailsDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'NEWS':
      return _$postDetailsDtoTypeEnum_NEWS;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PostDetailsDtoTypeEnum> _$postDetailsDtoTypeEnumValues =
    new BuiltSet<PostDetailsDtoTypeEnum>(const <PostDetailsDtoTypeEnum>[
  _$postDetailsDtoTypeEnum_NEWS,
]);

Serializer<PostDetailsDtoTypeEnum> _$postDetailsDtoTypeEnumSerializer =
    new _$PostDetailsDtoTypeEnumSerializer();

class _$PostDetailsDtoTypeEnumSerializer
    implements PrimitiveSerializer<PostDetailsDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NEWS': 'NEWS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NEWS': 'NEWS',
  };

  @override
  final Iterable<Type> types = const <Type>[PostDetailsDtoTypeEnum];
  @override
  final String wireName = 'PostDetailsDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, PostDetailsDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostDetailsDtoTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostDetailsDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostDetailsDto extends PostDetailsDto {
  @override
  final int? id;
  @override
  final DateTime? postedWhen;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? icon;
  @override
  final PostDetailsDtoTypeEnum? type;
  @override
  final UserSummaryDto? postedBy;
  @override
  final BuiltList<TransactionItemDto>? transactions;

  factory _$PostDetailsDto([void Function(PostDetailsDtoBuilder)? updates]) =>
      (new PostDetailsDtoBuilder()..update(updates)).build();

  _$PostDetailsDto._(
      {this.id,
      this.postedWhen,
      this.title,
      this.description,
      this.icon,
      this.type,
      this.postedBy,
      this.transactions})
      : super._();

  @override
  PostDetailsDto rebuild(void Function(PostDetailsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostDetailsDtoBuilder toBuilder() =>
      new PostDetailsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostDetailsDto &&
        id == other.id &&
        postedWhen == other.postedWhen &&
        title == other.title &&
        description == other.description &&
        icon == other.icon &&
        type == other.type &&
        postedBy == other.postedBy &&
        transactions == other.transactions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), postedWhen.hashCode),
                            title.hashCode),
                        description.hashCode),
                    icon.hashCode),
                type.hashCode),
            postedBy.hashCode),
        transactions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostDetailsDto')
          ..add('id', id)
          ..add('postedWhen', postedWhen)
          ..add('title', title)
          ..add('description', description)
          ..add('icon', icon)
          ..add('type', type)
          ..add('postedBy', postedBy)
          ..add('transactions', transactions))
        .toString();
  }
}

class PostDetailsDtoBuilder
    implements Builder<PostDetailsDto, PostDetailsDtoBuilder> {
  _$PostDetailsDto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _postedWhen;
  DateTime? get postedWhen => _$this._postedWhen;
  set postedWhen(DateTime? postedWhen) => _$this._postedWhen = postedWhen;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  PostDetailsDtoTypeEnum? _type;
  PostDetailsDtoTypeEnum? get type => _$this._type;
  set type(PostDetailsDtoTypeEnum? type) => _$this._type = type;

  UserSummaryDtoBuilder? _postedBy;
  UserSummaryDtoBuilder get postedBy =>
      _$this._postedBy ??= new UserSummaryDtoBuilder();
  set postedBy(UserSummaryDtoBuilder? postedBy) => _$this._postedBy = postedBy;

  ListBuilder<TransactionItemDto>? _transactions;
  ListBuilder<TransactionItemDto> get transactions =>
      _$this._transactions ??= new ListBuilder<TransactionItemDto>();
  set transactions(ListBuilder<TransactionItemDto>? transactions) =>
      _$this._transactions = transactions;

  PostDetailsDtoBuilder() {
    PostDetailsDto._defaults(this);
  }

  PostDetailsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _postedWhen = $v.postedWhen;
      _title = $v.title;
      _description = $v.description;
      _icon = $v.icon;
      _type = $v.type;
      _postedBy = $v.postedBy?.toBuilder();
      _transactions = $v.transactions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostDetailsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostDetailsDto;
  }

  @override
  void update(void Function(PostDetailsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostDetailsDto build() {
    _$PostDetailsDto _$result;
    try {
      _$result = _$v ??
          new _$PostDetailsDto._(
              id: id,
              postedWhen: postedWhen,
              title: title,
              description: description,
              icon: icon,
              type: type,
              postedBy: _postedBy?.build(),
              transactions: _transactions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'postedBy';
        _postedBy?.build();
        _$failedField = 'transactions';
        _transactions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostDetailsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
