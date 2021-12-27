// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_post_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommentPostDto extends CommentPostDto {
  @override
  final String? text;

  factory _$CommentPostDto([void Function(CommentPostDtoBuilder)? updates]) =>
      (new CommentPostDtoBuilder()..update(updates)).build();

  _$CommentPostDto._({this.text}) : super._();

  @override
  CommentPostDto rebuild(void Function(CommentPostDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentPostDtoBuilder toBuilder() =>
      new CommentPostDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentPostDto && text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc(0, text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentPostDto')..add('text', text))
        .toString();
  }
}

class CommentPostDtoBuilder
    implements Builder<CommentPostDto, CommentPostDtoBuilder> {
  _$CommentPostDto? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  CommentPostDtoBuilder() {
    CommentPostDto._defaults(this);
  }

  CommentPostDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentPostDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentPostDto;
  }

  @override
  void update(void Function(CommentPostDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentPostDto build() {
    final _$result = _$v ?? new _$CommentPostDto._(text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
