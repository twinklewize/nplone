import 'package:dio/dio.dart';
import 'package:n_plus_one/core/error/exception.dart';
import 'package:n_plus_one/data/models/new_models/auth_models/token_info_model.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/google_token_entity.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_register_entity.dart';
import 'package:nplone_api/nplone_api.dart';

abstract class AuthRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
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
    } catch (_) {
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
    } catch (_) {
      throw ServerException();
    }
  }
}
