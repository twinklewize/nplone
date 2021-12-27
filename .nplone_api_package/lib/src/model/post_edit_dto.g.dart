// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_edit_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostEditDto extends PostEditDto {
  @override
  final String title;
  @override
  final String description;
  @override
  final BuiltList<String> transactions;

  factory _$PostEditDto([void Function(PostEditDtoBuilder)? updates]) =>
      (new PostEditDtoBuilder()..update(updates)).build();

  _$PostEditDto._(
      {required this.title,
      required this.description,
      required this.transactions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'PostEditDto', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, 'PostEditDto', 'description');
    BuiltValueNullFieldError.checkNotNull(
        transactions, 'PostEditDto', 'transactions');
  }

  @override
  PostEditDto rebuild(void Function(PostEditDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostEditDtoBuilder toBuilder() => new PostEditDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostEditDto &&
        title == other.title &&
        description == other.description &&
        transactions == other.transactions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, title.hashCode), description.hashCode),
        transactions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PostEditDto')
          ..add('title', title)
          ..add('description', description)
          ..add('transactions', transactions))
        .toString();
  }
}

class PostEditDtoBuilder implements Builder<PostEditDto, PostEditDtoBuilder> {
  _$PostEditDto? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _transactions;
  ListBuilder<String> get transactions =>
      _$this._transactions ??= new ListBuilder<String>();
  set transactions(ListBuilder<String>? transactions) =>
      _$this._transactions = transactions;

  PostEditDtoBuilder() {
    PostEditDto._defaults(this);
  }

  PostEditDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _transactions = $v.transactions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostEditDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostEditDto;
  }

  @override
  void update(void Function(PostEditDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PostEditDto build() {
    _$PostEditDto _$result;
    try {
      _$result = _$v ??
          new _$PostEditDto._(
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'PostEditDto', 'title'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'PostEditDto', 'description'),
              transactions: transactions.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transactions';
        transactions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PostEditDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
