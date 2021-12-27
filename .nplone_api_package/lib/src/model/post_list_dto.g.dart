// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostListDto extends PostListDto {
  @override
  final BuiltList<PostItemDto> posts;
  @override
  final String nextPageToken;

  factory _$PostListDto([void Function(PostListDtoBuilder)? updates]) =>
      (new PostListDtoBuilder()..update(updates)).build();

  _$PostListDto._({required this.posts, required this.nextPageToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(posts, 'PostListDto', 'posts');
    BuiltValueNullFieldError.checkNotNull(
        nextPageToken, 'PostListDto', 'nextPageToken');
  }

  @override
  PostListDto rebuild(void Function(PostListDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostListDtoBuilder toBuilder() => new PostListDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostListDto &&
        posts == other.posts &&
        nextPageToken == other.nextPageToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, posts.hashCode), nextPageToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostListDto')
          ..add('posts', posts)
          ..add('nextPageToken', nextPageToken))
        .toString();
  }
}

class PostListDtoBuilder implements Builder<PostListDto, PostListDtoBuilder> {
  _$PostListDto? _$v;

  ListBuilder<PostItemDto>? _posts;
  ListBuilder<PostItemDto> get posts =>
      _$this._posts ??= new ListBuilder<PostItemDto>();
  set posts(ListBuilder<PostItemDto>? posts) => _$this._posts = posts;

  String? _nextPageToken;
  String? get nextPageToken => _$this._nextPageToken;
  set nextPageToken(String? nextPageToken) =>
      _$this._nextPageToken = nextPageToken;

  PostListDtoBuilder() {
    PostListDto._defaults(this);
  }

  PostListDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _posts = $v.posts.toBuilder();
      _nextPageToken = $v.nextPageToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostListDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostListDto;
  }

  @override
  void update(void Function(PostListDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostListDto build() {
    _$PostListDto _$result;
    try {
      _$result = _$v ??
          new _$PostListDto._(
              posts: posts.build(),
              nextPageToken: BuiltValueNullFieldError.checkNotNull(
                  nextPageToken, 'PostListDto', 'nextPageToken'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'posts';
        posts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostListDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
