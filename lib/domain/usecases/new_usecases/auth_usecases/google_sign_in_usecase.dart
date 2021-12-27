// Packages
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

// Core
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/error/success.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';

// Entities
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/google_token_entity.dart';

// Repositories
import 'package:n_plus_one/domain/repositories/new_repositories/auth_repository.dart';

class GoogleSingInUsecase extends UseCase<void, GoogleSingInParams> {
  final AuthRepository authRepository;

  GoogleSingInUsecase(this.authRepository);

  @override
  Future<Either<Failure, Success>> call(GoogleSingInParams params) async {
    final response = await authRepository.googleSignIn(params.googleToken);
    return response;
  }
}

class GoogleSingInParams extends Equatable {
  final GoogleTokenEntity googleToken;

  const GoogleSingInParams({required this.googleToken});

  @override
  List<Object> get props => [googleToken];
}
