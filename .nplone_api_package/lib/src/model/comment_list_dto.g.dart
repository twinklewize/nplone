// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommentListDto extends CommentListDto {
  @override
  final BuiltList<CommentDto>? comments;
  @override
  final int? count;
  @override
  final int? nextPage;

  factory _$CommentListDto([void Function(CommentListDtoBuilder)? updates]) =>
      (new CommentListDtoBuilder()..update(updates)).build();

  _$CommentListDto._({this.comments, this.count, this.nextPage}) : super._();

  @override
  CommentListDto rebuild(void Function(CommentListDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentListDtoBuilder toBuilder() =>
      new CommentListDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentListDto &&
        comments == other.comments &&
        count == other.count &&
        nextPage == other.nextPage;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, comments.hashCode), count.hashCode), nextPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentListDto')
          ..add('comments', comments)
          ..add('count', count)
          ..add('nextPage', nextPage))
        .toString();
  }
}

class CommentListDtoBuilder
    implements Builder<CommentListDto, CommentListDtoBuilder> {
  _$CommentListDto? _$v;

  ListBuilder<CommentDto>? _comments;
  ListBuilder<CommentDto> get comments =>
      _$this._comments ??= new ListBuilder<CommentDto>();
  set comments(ListBuilder<CommentDto>? comments) =>
      _$this._comments = comments;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _nextPage;
  int? get nextPage => _$this._nextPage;
  set nextPage(int? nextPage) => _$this._nextPage = nextPage;

  CommentListDtoBuilder() {
    CommentListDto._defaults(this);
  }

  CommentListDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _comments = $v.comments?.toBuilder();
      _count = $v.count;
      _nextPage = $v.nextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentListDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentListDto;
  }

  @override
  void update(void Function(CommentListDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentListDto build() {
    _$CommentListDto _$result;
    try {
      _$result = _$v ??
          new _$CommentListDto._(
              comments: _comments?.build(), count: count, nextPage: nextPage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comments';
        _comments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommentListDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
