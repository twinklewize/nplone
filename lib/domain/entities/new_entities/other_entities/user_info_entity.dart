import 'package:equatable/equatable.dart';

class UserInfoEntity extends Equatable {
  UserInfoEntity({
    required this.id,
    required this.email,
    this.name = '',
    this.givenName = '',
    this.familyName = '',
  });

  /// ID пользователя
  final String id;

  /// E-Mail пользователя
  final String email;

  /// ФИО пользователя
  final String name;

  /// Имя пользователя
  final String givenName;

  /// Фамилия пользователя
  final String familyName;

  @override
  List<Object?> get props => [id, email, name, givenName, familyName];
}
