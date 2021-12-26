import 'package:equatable/equatable.dart';

class UserSummaryDtoEntity extends Equatable {
  UserSummaryDtoEntity({
    required this.id,
    this.name = '',
  });

  /// ID пользователя
  final String id;

  /// Имя пользователя
  final String name;

  @override
  List<Object?> get props => [id, name];
}
