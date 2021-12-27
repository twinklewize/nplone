// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommentDto extends CommentDto {
  @override
  final int id;
  @override
  final UserSummaryDto author;
  @override
  final DateTime postedAt;
  @override
  final String text;
  @override
  final int likes;
  @override
  final bool liked;

  factory _$CommentDto([void Function(CommentDtoBuilder)? updates]) =>
      (new CommentDtoBuilder()..update(updates)).build();

  _$CommentDto._(
      {required this.id,
      required this.author,
      required this.postedAt,
      required this.text,
      required this.likes,
      required this.liked})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CommentDto', 'id');
    BuiltValueNullFieldError.checkNotNull(author, 'CommentDto', 'author');
    BuiltValueNullFieldError.checkNotNull(postedAt, 'CommentDto', 'postedAt');
    BuiltValueNullFieldError.checkNotNull(text, 'CommentDto', 'text');
    BuiltValueNullFieldError.checkNotNull(likes, 'CommentDto', 'likes');
    BuiltValueNullFieldError.checkNotNull(liked, 'CommentDto', 'liked');
  }

  @override
  CommentDto rebuild(void Function(CommentDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentDtoBuilder toBuilder() => new CommentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentDto &&
        id == other.id &&
        author == other.author &&
        postedAt == other.postedAt &&
        text == other.text &&
        likes == other.likes &&
        liked == other.liked;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), author.hashCode),
                    postedAt.hashCode),
                text.hashCode),
            likes.hashCode),
        liked.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentDto')
          ..add('id', id)
          ..add('author', author)
          ..add('postedAt', postedAt)
          ..add('text', text)
          ..add('likes', likes)
          ..add('liked', liked))
        .toString();
  }
}

class CommentDtoBuilder implements Builder<CommentDto, CommentDtoBuilder> {
  _$CommentDto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  UserSummaryDtoBuilder? _author;
  UserSummaryDtoBuilder get author =>
      _$this._author ??= new UserSummaryDtoBuilder();
  set author(UserSummaryDtoBuilder? author) => _$this._author = author;

  DateTime? _postedAt;
  DateTime? get postedAt => _$this._postedAt;
  set postedAt(DateTime? postedAt) => _$this._postedAt = postedAt;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  bool? _liked;
  bool? get liked => _$this._liked;
  set liked(bool? liked) => _$this._liked = liked;

  CommentDtoBuilder() {
    CommentDto._defaults(this);
  }

  CommentDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _author = $v.author.toBuilder();
      _postedAt = $v.postedAt;
      _text = $v.text;
      _likes = $v.likes;
      _liked = $v.liked;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentDto;
  }

  @override
  void update(void Function(CommentDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentDto build() {
    _$CommentDto _$result;
    try {
      _$result = _$v ??
          new _$CommentDto._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'CommentDto', 'id'),
              author: author.build(),
              postedAt: BuiltValueNullFieldError.checkNotNull(
                  postedAt, 'CommentDto', 'postedAt'),
              text: BuiltValueNullFieldError.checkNotNull(
                  text, 'CommentDto', 'text'),
              likes: BuiltValueNullFieldError.checkNotNull(
                  likes, 'CommentDto', 'likes'),
              liked: BuiltValueNullFieldError.checkNotNull(
                  liked, 'CommentDto', 'liked'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'author';
        author.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommentDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
