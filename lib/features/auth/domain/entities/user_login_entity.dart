import 'package:equatable/equatable.dart';

class UserLoginEntity extends Equatable {
  UserLoginEntity({
    required this.email,
    required this.password,
  });

  /// E-Mail пользователя
  final String email;

  /// Пароль пользователя
  final String password;

  @override
  List<Object?> get props => [email, password];
}
