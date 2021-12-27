import 'package:dartz/dartz.dart';
import 'package:n_plus_one/core/error/exception.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/error/success.dart';
import 'package:n_plus_one/core/platform/network_info.dart';
import 'package:n_plus_one/data/datasources/new_datasources/auth_remote_datasource.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/token_info_entity.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_register_entity.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/google_token_entity.dart';
import 'package:n_plus_one/domain/repositories/new_repositories/auth_repository.dart';

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
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NoInternetConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, Success>> login(UserLoginEntity userLogin) async {
    if (await networkInfo.isConnected) {
      try {
        tokenInfo = await remoteDataSource.login(userLogin);
        return Right(LoginSuccess());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NoInternetConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, Success>> registerUser(
      UserRegisterEntity userRegister) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.register(userRegister);
        return Right(RegisterSuccess());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NoInternetConnectionFailure());
    }
  }
}
