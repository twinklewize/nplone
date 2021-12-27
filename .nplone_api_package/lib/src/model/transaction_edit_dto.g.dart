// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_edit_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionEditDto extends TransactionEditDto {
  @override
  final String? description;
  @override
  final TransactionViewConfiguration? viewConfiguration;

  factory _$TransactionEditDto(
          [void Function(TransactionEditDtoBuilder)? updates]) =>
      (new TransactionEditDtoBuilder()..update(updates)).build();

  _$TransactionEditDto._({this.description, this.viewConfiguration})
      : super._();

  @override
  TransactionEditDto rebuild(
          void Function(TransactionEditDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionEditDtoBuilder toBuilder() =>
      new TransactionEditDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionEditDto &&
        description == other.description &&
        viewConfiguration == other.viewConfiguration;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, description.hashCode), viewConfiguration.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionEditDto')
          ..add('description', description)
          ..add('viewConfiguration', viewConfiguration))
        .toString();
  }
}

class TransactionEditDtoBuilder
    implements Builder<TransactionEditDto, TransactionEditDtoBuilder> {
  _$TransactionEditDto? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  TransactionViewConfigurationBuilder? _viewConfiguration;
  TransactionViewConfigurationBuilder get viewConfiguration =>
      _$this._viewConfiguration ??= new TransactionViewConfigurationBuilder();
  set viewConfiguration(
          TransactionViewConfigurationBuilder? viewConfiguration) =>
      _$this._viewConfiguration = viewConfiguration;

  TransactionEditDtoBuilder() {
    TransactionEditDto._defaults(this);
  }

  TransactionEditDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _viewConfiguration = $v.viewConfiguration?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionEditDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionEditDto;
  }

  @override
  void update(void Function(TransactionEditDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionEditDto build() {
    _$TransactionEditDto _$result;
    try {
      _$result = _$v ??
          new _$TransactionEditDto._(
              description: description,
              viewConfiguration: _viewConfiguration?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'viewConfiguration';
        _viewConfiguration?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TransactionEditDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
