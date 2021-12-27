// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_summary_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSummaryDto extends UserSummaryDto {
  @override
  final String id;
  @override
  final String? name;

  factory _$UserSummaryDto([void Function(UserSummaryDtoBuilder)? updates]) =>
      (new UserSummaryDtoBuilder()..update(updates)).build();

  _$UserSummaryDto._({required this.id, this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'UserSummaryDto', 'id');
  }

  @override
  UserSummaryDto rebuild(void Function(UserSummaryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSummaryDtoBuilder toBuilder() =>
      new UserSummaryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSummaryDto && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserSummaryDto')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class UserSummaryDtoBuilder
    implements Builder<UserSummaryDto, UserSummaryDtoBuilder> {
  _$UserSummaryDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UserSummaryDtoBuilder() {
    UserSummaryDto._defaults(this);
  }

  UserSummaryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSummaryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSummaryDto;
  }

  @override
  void update(void Function(UserSummaryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserSummaryDto build() {
    final _$result = _$v ??
        new _$UserSummaryDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'UserSummaryDto', 'id'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
