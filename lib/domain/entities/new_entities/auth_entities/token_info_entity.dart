import 'package:equatable/equatable.dart';

class TokenInfoEntity extends Equatable {
  TokenInfoEntity({
    required this.accessToken,
    required this.userId,
  });

  /// JWT ключ доступа к системе
  final String accessToken;

  /// ID пользователя, под которым произошёл вход
  final String userId;

  @override
  List<Object?> get props => [accessToken, userId];
}
