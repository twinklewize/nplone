import 'package:equatable/equatable.dart';

class UserRegisterEntity extends Equatable {
  UserRegisterEntity({
    required this.email,
    required this.password,
    required this.country,
  });

  /// E-Mail пользователя
  final String email;

  /// Пароль пользователя
  final String password;

  /// Страна пользователя (согласно ISO 3166-1)
  final String country;

  @override
  List<Object?> get props => [email, password, country];
}
