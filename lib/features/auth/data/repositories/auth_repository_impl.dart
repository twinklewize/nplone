import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error/exception.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/error/success.dart';
import 'package:n_plus_one/core/platform/network_info.dart';
import 'package:n_plus_one/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:n_plus_one/features/auth/domain/entities/token_info_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/user_register_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/user_login_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/google_token_entity.dart';
import 'package:n_plus_one/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  late final TokenInfoEntity tokenInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, Success>> googleSignIn(
      GoogleTokenEntity googleToken) async {
    if (await networkInfo.isConnected) {
      try {
        tokenInfo = await remoteDataSource.googleSignIn(googleToken);
        return Right(LoginSuccess());
      } catch (exception) {
        return Left(ServerFailure());
      }
    }
    return Left(NoInternetConnectionFailure());
  }

  @override
  Future<Either<Failure, Success>> login(UserLoginEntity userLogin) async {
    if (await networkInfo.isConnected) {
      try {
        tokenInfo = await remoteDataSource.login(userLogin);
        return Right(LoginSuccess());
      } on UserNotFoundException {
        return Left(UserNotFoundFailure());
      } on PasswordNotMatchException {
        return Left(PasswordNotMatchFailure());
      } catch (_) {
        return Left(ServerFailure());
      }
    }
    return Left(NoInternetConnectionFailure());
  }

  @override
  Future<Either<Failure, Success>> registerUser(
      UserRegisterEntity userRegister) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.register(userRegister);
        return Right(RegisterSuccess());
      } catch (exception) {
        if (exception is RegisterException) {
          return Left(RegisterFailure());
        }
        return Left(ServerFailure());
      }
    }
    return Left(NoInternetConnectionFailure());
  }
}
