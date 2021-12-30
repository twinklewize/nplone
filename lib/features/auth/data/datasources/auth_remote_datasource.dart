import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:n_plus_one/core/error_and_success/exception.dart';
import 'package:n_plus_one/core/error_and_success/success.dart';
import 'package:n_plus_one/features/auth/data/models/google_token_model.dart';
import 'package:n_plus_one/features/auth/data/models/token_info_model.dart';
import 'package:n_plus_one/features/auth/domain/entities/google_token_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/user_login_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/user_register_entity.dart';
import 'package:nplone_api/nplone_api.dart';

abstract class AuthRemoteDataSource {
  Future<Success> googleSignIn(GoogleTokenEntity googleToken);

  Future<GoogleTokenModel> googleSignInToken();

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
  Future<Success> googleSignIn(GoogleTokenEntity googleToken) async {
    try {
      Response<TokenInfo> response = await _authApi.googleSignIn(
          googleToken: GoogleToken((GoogleTokenBuilder googleTokenBuilder) {
        googleTokenBuilder.token = googleToken.token;
        googleTokenBuilder.country = googleToken.country;
      }));

      final tokenInfo = TokenInfoModel.fromTokenInfo(tokenInfo: response.data!);
      if (response.statusCode == 200) {
        return LoginSuccess(value: tokenInfo);
      }
      if (response.statusCode == 201) {
        return RegisterSuccess(value: tokenInfo);
      }
      throw ServerException();
    } catch (exception) {
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

  @override
  Future<GoogleTokenModel> googleSignInToken() async {
    try {
      // Google Sign In
      final _googleSignIn = GoogleSignIn(
        // clientId:
        //     '685999891020-ve6kmiunijem4dok0qi9u5qidqmsjk3l.apps.googleusercontent.com',
        scopes: <String>['https://www.googleapis.com/auth/user.addresses.read'],
      );
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) throw ServerException();

      // Country
      final Response response = await Dio().get(
        'https://people.googleapis.com/v1/people/me/'
        '?personFields=locales',
        options: Options(
          headers: await googleUser.authHeaders,
        ),
      );
      if (response.statusCode != 200) throw ServerException();
      final country = response.data['locales'][0]['value'];

      // Id Token
      final FirebaseAuth _auth = FirebaseAuth.instance;
      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;
      if (googleAuth == null) throw ServerException();
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      final User? user = (await _auth.signInWithCredential(credential)).user;
      if (user == null) throw ServerException();
      final idToken = await user.getIdToken(true);

      // Google Token
      print('$idToken');
      final googleToken = GoogleTokenModel(
        token: idToken,
        country: country,
      );
      return googleToken;
    } catch (error) {
      throw ServerException();
    }
  }
}
