import 'package:n_plus_one/core/error/exception.dart';
import 'package:n_plus_one/data/models/new_models/auth_models/token_info_model.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/google_token_entity.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_register_entity.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:nplone_api/api.dart';

abstract class AuthRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  Future<TokenInfoModel> googleSignIn(GoogleTokenEntity googleToken);
  Future<TokenInfoModel> login(UserLoginEntity userLogin);
  Future<void> register(UserRegisterEntity userRegister);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final authApi = AuthApi();

  @override
  Future<TokenInfoModel> googleSignIn(GoogleTokenEntity googleToken) async {
    try {
      return TokenInfoModel.fromTokenInfo(
        tokenInfo: await authApi.googleSignIn(
          GoogleToken(
            country: googleToken.country,
            token: googleToken.token,
          ),
        ),
      );
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<TokenInfoModel> login(UserLoginEntity userLogin) async {
    try {
      return TokenInfoModel.fromTokenInfo(
        tokenInfo: await authApi.login(
          UserLogin(
            email: userLogin.email,
            password: userLogin.password,
          ),
        ),
      );
    } catch (_) {
      throw UnimplementedError();
    }
  }

  @override
  Future<void> register(UserRegisterEntity userRegister) {
    try {
      return authApi.registerUser(UserRegister(
        email: userRegister.email,
        password: userRegister.password,
        country: userRegister.country,
      ));
    } catch (_) {
      throw UnimplementedError();
    }
  }
}
