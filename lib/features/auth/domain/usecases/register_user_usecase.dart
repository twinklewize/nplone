// Packages
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/core/error_and_success/failure.dart';
import 'package:n_plus_one/core/error_and_success/success.dart';

// Core

import 'package:n_plus_one/core/usecases/usecase.dart';

// Entities
import 'package:n_plus_one/features/auth/domain/entities/user_register_entity.dart';

// Repositories
import 'package:n_plus_one/features/auth/domain/repositories/auth_repository.dart';

class RegisterUserUsecase extends UseCase<void, RegisterUserParams> {
  final AuthRepository authRepository;

  RegisterUserUsecase(this.authRepository);

  @override
  Future<Either<Failure, Success>> call(RegisterUserParams params) async {
    final response = await authRepository.registerUser(params.userRegister);
    return response;
  }
}

class RegisterUserParams extends Equatable {
  final UserRegisterEntity userRegister;

  const RegisterUserParams({required this.userRegister});

  @override
  List<Object> get props => [userRegister];
}
