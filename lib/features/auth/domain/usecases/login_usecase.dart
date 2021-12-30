// Packages
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/core/error_and_success/failure.dart';
import 'package:n_plus_one/core/error_and_success/success.dart';

// Core

import 'package:n_plus_one/core/usecases/usecase.dart';

// Entities
import 'package:n_plus_one/features/auth/domain/entities/user_login_entity.dart';

// Repositories
import 'package:n_plus_one/features/auth/domain/repositories/auth_repository.dart';

class LoginUsecase extends UseCase<void, LoginParams> {
  final AuthRepository authRepository;

  LoginUsecase(this.authRepository);

  @override
  Future<Either<Failure, Success>> call(LoginParams params) async {
    final response = await authRepository.login(params.userLogin);
    return response;
  }
}

class LoginParams extends Equatable {
  final UserLoginEntity userLogin;

  const LoginParams({required this.userLogin});

  @override
  List<Object> get props => [userLogin];
}
