// Packages
import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error_and_success/failure.dart';
import 'package:n_plus_one/core/error_and_success/success.dart';

// Core
import 'package:n_plus_one/core/usecases/usecase.dart';

// Entities

// Repositories
import 'package:n_plus_one/features/auth/domain/repositories/auth_repository.dart';

class GoogleSingInUsecase extends UseCase<void, NoParams> {
  final AuthRepository authRepository;

  GoogleSingInUsecase(this.authRepository);

  @override
  Future<Either<Failure, Success>> call(NoParams params) async {
    final response = await authRepository.googleSignIn();
    return response;
  }
}
