// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Merchant extends Merchant {
  @override
  final String name;
  @override
  final int categoryCode;

  factory _$Merchant([void Function(MerchantBuilder)? updates]) =>
      (new MerchantBuilder()..update(updates)).build();

  _$Merchant._({required this.name, required this.categoryCode}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'Merchant', 'name');
    BuiltValueNullFieldError.checkNotNull(
        categoryCode, 'Merchant', 'categoryCode');
  }

  @override
  Merchant rebuild(void Function(MerchantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MerchantBuilder toBuilder() => new MerchantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Merchant &&
        name == other.name &&
        categoryCode == other.categoryCode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), categoryCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Merchant')
          ..add('name', name)
          ..add('categoryCode', categoryCode))
        .toString();
  }
}

class MerchantBuilder implements Builder<Merchant, MerchantBuilder> {
  _$Merchant? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _categoryCode;
  int? get categoryCode => _$this._categoryCode;
  set categoryCode(int? categoryCode) => _$this._categoryCode = categoryCode;

  MerchantBuilder() {
    Merchant._defaults(this);
  }

  MerchantBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _categoryCode = $v.categoryCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Merchant other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Merchant;
  }

  @override
  void update(void Function(MerchantBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Merchant build() {
    final _$result = _$v ??
        new _$Merchant._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, 'Merchant', 'name'),
            categoryCode: BuiltValueNullFieldError.checkNotNull(
                categoryCode, 'Merchant', 'categoryCode'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
