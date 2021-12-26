// Core
import 'package:n_plus_one/core/error/failure.dart';

// Entities
import '../../entities/new_entities/auth_entities/user_login_entity.dart';
import '../../entities/new_entities/auth_entities/user_register_entity.dart';
import '../../entities/new_entities/auth_entities/google_token_entity.dart';
import '../../entities/new_entities/auth_entities/token_info_entity.dart';

// Packages
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> registerUser(UserRegisterEntity userRegister);

  Future<Either<Failure, TokenInfoEntity>> login(UserLoginEntity userLogin);

  Future<Either<Failure, TokenInfoEntity>> googleSignIn(
      GoogleTokenEntity googleToken);
}
