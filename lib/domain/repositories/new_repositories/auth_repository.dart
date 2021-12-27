// Core
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/error/success.dart';

// Entities
import '../../entities/new_entities/auth_entities/user_login_entity.dart';
import '../../entities/new_entities/auth_entities/user_register_entity.dart';
import '../../entities/new_entities/auth_entities/google_token_entity.dart';

// Packages
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, Success>> registerUser(
      UserRegisterEntity userRegister);

  Future<Either<Failure, Success>> login(UserLoginEntity userLogin);

  Future<Either<Failure, Success>> googleSignIn(GoogleTokenEntity googleToken);
}
