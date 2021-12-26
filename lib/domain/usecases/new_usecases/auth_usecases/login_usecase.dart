import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/token_info_entity.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
import 'package:n_plus_one/domain/repositories/new_repositories/auth_repository.dart';
import 'package:http/http.dart';

class LoginUsecase extends UseCase<void, LoginParams> {
  final AuthRepository authRepository;

  LoginUsecase(this.authRepository);

  @override
  Future<Either<Failure, TokenInfoEntity>> call(LoginParams params) async {
    final response = await authRepository.login(params.userLogin);
    return response;
  }
}

class LoginUserWithHttpUsecase extends UseCase<void, LoginParams> {
  final AuthRepository authRepository;

  LoginUserWithHttpUsecase(this.authRepository);

  @override
  Future<Either<Failure, Response>> call(LoginParams params) async {
    final response =
        await authRepository.loginUserWithHttpInfo(params.userLogin);
    return response;
  }
}

class LoginParams extends Equatable {
  final UserLoginEntity userLogin;

  const LoginParams({required this.userLogin});

  @override
  List<Object> get props => [userLogin];
}
