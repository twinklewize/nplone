import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_register_entity.dart';
import 'package:n_plus_one/domain/repositories/new_repositories/auth_repository.dart';
import 'package:http/http.dart';

class RegisterUserUsecase extends UseCase<void, RegisterUserParams> {
  final AuthRepository authRepository;

  RegisterUserUsecase(this.authRepository);

  @override
  Future<Either<Failure, void>> call(RegisterUserParams params) async {
    final response = await authRepository.registerUser(params.userRegister);
    return response;
  }
}

class RegisterUserWithHttpUsecase extends UseCase<void, RegisterUserParams> {
  final AuthRepository authRepository;

  RegisterUserWithHttpUsecase(this.authRepository);

  @override
  Future<Either<Failure, Response>> call(RegisterUserParams params) async {
    final response =
        await authRepository.registerUserWithHttpInfo(params.userRegister);
    return response;
  }
}

class RegisterUserParams extends Equatable {
  final UserRegisterEntity userRegister;

  const RegisterUserParams({required this.userRegister});

  @override
  List<Object> get props => [userRegister];
}
