// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PostItemDtoTypeEnum _$postItemDtoTypeEnum_NEWS =
    const PostItemDtoTypeEnum._('NEWS');

PostItemDtoTypeEnum _$postItemDtoTypeEnumValueOf(String name) {
  switch (name) {
    case 'NEWS':
      return _$postItemDtoTypeEnum_NEWS;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PostItemDtoTypeEnum> _$postItemDtoTypeEnumValues =
    new BuiltSet<PostItemDtoTypeEnum>(const <PostItemDtoTypeEnum>[
  _$postItemDtoTypeEnum_NEWS,
]);

Serializer<PostItemDtoTypeEnum> _$postItemDtoTypeEnumSerializer =
    new _$PostItemDtoTypeEnumSerializer();

class _$PostItemDtoTypeEnumSerializer
    implements PrimitiveSerializer<PostItemDtoTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NEWS': 'NEWS',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NEWS': 'NEWS',
  };

  @override
  final Iterable<Type> types = const <Type>[PostItemDtoTypeEnum];
  @override
  final String wireName = 'PostItemDtoTypeEnum';

  @override
  Object serialize(Serializers serializers, PostItemDtoTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PostItemDtoTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PostItemDtoTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PostItemDto extends PostItemDto {
  @override
  final int id;
  @override
  final DateTime postedWhen;
  @override
  final String title;
  @override
  final String descriptionStripped;
  @override
  final String icon;
  @override
  final PostItemDtoTypeEnum type;
  @override
  final int likes;
  @override
  final bool liked;
  @override
  final int comments;
  @override
  final BuiltList<AccountBalance> transactionBalances;

  factory _$PostItemDto([void Function(PostItemDtoBuilder)? updates]) =>
      (new PostItemDtoBuilder()..update(updates)).build();

  _$PostItemDto._(
      {required this.id,
      required this.postedWhen,
      required this.title,
      required this.descriptionStripped,
      required this.icon,
      required this.type,
      required this.likes,
      required this.liked,
      required this.comments,
      required this.transactionBalances})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'PostItemDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        postedWhen, 'PostItemDto', 'postedWhen');
    BuiltValueNullFieldError.checkNotNull(title, 'PostItemDto', 'title');
    BuiltValueNullFieldError.checkNotNull(
        descriptionStripped, 'PostItemDto', 'descriptionStripped');
    BuiltValueNullFieldError.checkNotNull(icon, 'PostItemDto', 'icon');
    BuiltValueNullFieldError.checkNotNull(type, 'PostItemDto', 'type');
    BuiltValueNullFieldError.checkNotNull(likes, 'PostItemDto', 'likes');
    BuiltValueNullFieldError.checkNotNull(liked, 'PostItemDto', 'liked');
    BuiltValueNullFieldError.checkNotNull(comments, 'PostItemDto', 'comments');
    BuiltValueNullFieldError.checkNotNull(
        transactionBalances, 'PostItemDto', 'transactionBalances');
  }

  @override
  PostItemDto rebuild(void Function(PostItemDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostItemDtoBuilder toBuilder() => new PostItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostItemDto &&
        id == other.id &&
        postedWhen == other.postedWhen &&
        title == other.title &&
        descriptionStripped == other.descriptionStripped &&
        icon == other.icon &&
        type == other.type &&
        likes == other.likes &&
        liked == other.liked &&
        comments == other.comments &&
        transactionBalances == other.transactionBalances;
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
                                        postedWhen.hashCode),
                                    title.hashCode),
                                descriptionStripped.hashCode),
                            icon.hashCode),
                        type.hashCode),
                    likes.hashCode),
                liked.hashCode),
            comments.hashCode),
        transactionBalances.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostItemDto')
          ..add('id', id)
          ..add('postedWhen', postedWhen)
          ..add('title', title)
          ..add('descriptionStripped', descriptionStripped)
          ..add('icon', icon)
          ..add('type', type)
          ..add('likes', likes)
          ..add('liked', liked)
          ..add('comments', comments)
          ..add('transactionBalances', transactionBalances))
        .toString();
  }
}

class PostItemDtoBuilder implements Builder<PostItemDto, PostItemDtoBuilder> {
  _$PostItemDto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _postedWhen;
  DateTime? get postedWhen => _$this._postedWhen;
  set postedWhen(DateTime? postedWhen) => _$this._postedWhen = postedWhen;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _descriptionStripped;
  String? get descriptionStripped => _$this._descriptionStripped;
  set descriptionStripped(String? descriptionStripped) =>
      _$this._descriptionStripped = descriptionStripped;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  PostItemDtoTypeEnum? _type;
  PostItemDtoTypeEnum? get type => _$this._type;
  set type(PostItemDtoTypeEnum? type) => _$this._type = type;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  bool? _liked;
  bool? get liked => _$this._liked;
  set liked(bool? liked) => _$this._liked = liked;

  int? _comments;
  int? get comments => _$this._comments;
  set comments(int? comments) => _$this._comments = comments;

  ListBuilder<AccountBalance>? _transactionBalances;
  ListBuilder<AccountBalance> get transactionBalances =>
      _$this._transactionBalances ??= new ListBuilder<AccountBalance>();
  set transactionBalances(ListBuilder<AccountBalance>? transactionBalances) =>
      _$this._transactionBalances = transactionBalances;

  PostItemDtoBuilder() {
    PostItemDto._defaults(this);
  }

  PostItemDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _postedWhen = $v.postedWhen;
      _title = $v.title;
      _descriptionStripped = $v.descriptionStripped;
      _icon = $v.icon;
      _type = $v.type;
      _likes = $v.likes;
      _liked = $v.liked;
      _comments = $v.comments;
      _transactionBalances = $v.transactionBalances.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostItemDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostItemDto;
  }

  @override
  void update(void Function(PostItemDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostItemDto build() {
    _$PostItemDto _$result;
    try {
      _$result = _$v ??
          new _$PostItemDto._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'PostItemDto', 'id'),
              postedWhen: BuiltValueNullFieldError.checkNotNull(
                  postedWhen, 'PostItemDto', 'postedWhen'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'PostItemDto', 'title'),
              descriptionStripped: BuiltValueNullFieldError.checkNotNull(
                  descriptionStripped, 'PostItemDto', 'descriptionStripped'),
              icon: BuiltValueNullFieldError.checkNotNull(
                  icon, 'PostItemDto', 'icon'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'PostItemDto', 'type'),
              likes: BuiltValueNullFieldError.checkNotNull(
                  likes, 'PostItemDto', 'likes'),
              liked: BuiltValueNullFieldError.checkNotNull(
                  liked, 'PostItemDto', 'liked'),
              comments: BuiltValueNullFieldError.checkNotNull(
                  comments, 'PostItemDto', 'comments'),
              transactionBalances: transactionBalances.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transactionBalances';
        transactionBalances.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostItemDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
