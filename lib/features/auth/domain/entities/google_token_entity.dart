import 'package:equatable/equatable.dart';

class GoogleTokenEntity extends Equatable {
  GoogleTokenEntity({
    required this.token,
    required this.country,
  });

  /// Токен
  final String token;

  /// Страна
  final String country;

  @override
  List<Object?> get props => [token, country];
}
