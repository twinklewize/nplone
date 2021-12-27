// import 'package:dartz/dartz.dart';
// import 'package:n_plus_one/core/error/exception.dart';
// import 'package:n_plus_one/core/error/failure.dart';
// import 'package:n_plus_one/core/platform/network_info.dart';
// import 'package:n_plus_one/data/datasources/new_datasources/auth_remote_datasource.dart';
// import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_register_entity.dart';
// import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
// import 'package:n_plus_one/domain/entities/new_entities/auth_entities/token_info_entity.dart';
// import 'package:n_plus_one/domain/entities/new_entities/auth_entities/google_token_entity.dart';
// import 'package:n_plus_one/domain/repositories/new_repositories/auth_repository.dart';
// import 'package:http/http.dart';

// class AuthRepositoryImpl implements AuthRepository {
//   final AuthRemoteDataSource remoteDataSource;
//   final NetworkInfo networkInfo;

//   AuthRepositoryImpl({
//     required this.remoteDataSource,
//     required this.networkInfo,
//   });

//   @override
//   Future<Either<Failure, TokenInfoEntity>> googleSignIn(
//       GoogleTokenEntity googleToken) async {
//     if (await networkInfo.isConnected) {
//       try {
//         final Response response =
//             await remoteDataSource.googleSignInWithHttpInfo(googleToken);
//         if (response.statusCode == 200) {
//           final tokenInfo = await remoteDataSource.googleSignIn(googleToken);
//           return Right(tokenInfo);
//         }
//         return Left(ServerFailure());
//       } on ServerException {
//         return Left(ServerFailure());
//       }
//     } else {
//       return Left(NoInternetConnectionFailure());
//     }
//   }

//   @override
//   Future<Either<Failure, TokenInfoEntity>> login(
//       UserLoginEntity userLogin) async {
//     if (await networkInfo.isConnected) {
//       try {
//         final Response response =
//             await remoteDataSource.loginWithHttpInfo(userLogin);
//         if (response.statusCode == 200) {
//           final tokenInfo = await remoteDataSource.login(userLogin);
//           return Right(tokenInfo);
//         }
//         return Left(ServerFailure());
//       } on ServerException {
//         return Left(ServerFailure());
//       }
//     } else {
//       return Left(NoInternetConnectionFailure());
//     }
//   }

//   @override
//   Future<Either<Failure, void>> registerUser(
//       UserRegisterEntity userRegister) async {
//     if (await networkInfo.isConnected) {
//       try {
//         final Response response =
//             await remoteDataSource.registerWithHttpInfo(userRegister);
//         if (response.statusCode == 201) {
//           return Right(dynamic);
//         }
//         return Left(ServerFailure());
//       } on ServerException {
//         return Left(ServerFailure());
//       }
//     } else {
//       return Left(NoInternetConnectionFailure());
//     }
//   }
// }
