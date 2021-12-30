// Core
import 'package:n_plus_one/core/error_and_success/failure.dart';
import 'package:n_plus_one/core/error_and_success/success.dart';

// Entities
import '../entities/user_login_entity.dart';
import '../entities/user_register_entity.dart';

// Packages
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, Success>> registerUser(
      UserRegisterEntity userRegister);

  Future<Either<Failure, Success>> login(UserLoginEntity userLogin);

  Future<Either<Failure, Success>> googleSignIn();
}
