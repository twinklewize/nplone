import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:n_plus_one/core/error/exception.dart';
import 'package:n_plus_one/features/auth/data/models/token_info_model.dart';
import 'package:n_plus_one/features/auth/domain/entities/google_token_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/user_login_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/user_register_entity.dart';
import 'package:nplone_api/nplone_api.dart';

abstract class AuthRemoteDataSource {
  Future<TokenInfoModel> googleSignIn(GoogleTokenEntity googleToken);

  Future<TokenInfoModel> login(UserLoginEntity userLogin);

  Future<void> register(UserRegisterEntity userRegister);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final _nploneApi = NploneApi();
  late final AuthApi _authApi;

  AuthRemoteDataSourceImpl() {
    _authApi = _nploneApi.getAuthApi();
  }

  @override
  Future<TokenInfoModel> googleSignIn(GoogleTokenEntity googleToken) async {
    try {
      Response<TokenInfo> response = await _authApi.googleSignIn(
          googleToken: GoogleToken((GoogleTokenBuilder googleTokenBuilder) {
        googleTokenBuilder.token = googleToken.token;
        googleTokenBuilder.country = googleToken.country;
      }));

      if (response.statusCode == 200) {
        return TokenInfoModel.fromTokenInfo(tokenInfo: response.data!);
      }
      throw ServerException();
    } catch (_) {
      throw ServerException();
    }
  }

  late Response<TokenInfo> response;

  @override
  Future<TokenInfoModel> login(UserLoginEntity userLogin) async {
    try {
      Response<TokenInfo> response = await _authApi.login(
          userLogin: UserLogin((UserLoginBuilder userLoginBuilder) {
        userLoginBuilder.password = userLogin.password;
        userLoginBuilder.email = userLogin.email;
      }));
      if (response.statusCode == 200) {
        return TokenInfoModel.fromTokenInfo(tokenInfo: response.data!);
      }
      throw ServerException();
    } catch (error) {
      if (error is DioError &&
          error.response != null &&
          error.response!.statusCode == 401) {
        String detail = json.decode(error.response!.data)['detail'];
        if (detail == 'Password does not match') {
          throw PasswordNotMatchException();
        }
        if (detail == 'User not found') {
          throw UserNotFoundException();
        }
      }
      throw ServerException();
    }
  }

  @override
  Future<void> register(UserRegisterEntity userRegister) async {
    try {
      Response<void> response = await _authApi.registerUser(
        userRegister: UserRegister(
          (UserRegisterBuilder userRegisterBuilder) {
            userRegisterBuilder.country = userRegister.country;
            userRegisterBuilder.email = userRegister.email;
            userRegisterBuilder.password = userRegister.password;
          },
        ),
      );

      if (response.statusCode == 201) {
        return;
      }
      throw ServerException();
    } catch (error) {
      if (error is DioError && error.response!.statusCode == 500) {
        throw RegisterException();
      }
      throw ServerException();
    }
  }
}
