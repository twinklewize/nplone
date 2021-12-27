//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:nplone_api/src/serializers.dart';
import 'package:nplone_api/src/auth/api_key_auth.dart';
import 'package:nplone_api/src/auth/basic_auth.dart';
import 'package:nplone_api/src/auth/bearer_auth.dart';
import 'package:nplone_api/src/auth/oauth.dart';
import 'package:nplone_api/src/api/account_api.dart';
import 'package:nplone_api/src/api/account_redirect_api.dart';
import 'package:nplone_api/src/api/auth_api.dart';
import 'package:nplone_api/src/api/post_api.dart';
import 'package:nplone_api/src/api/provider_api.dart';
import 'package:nplone_api/src/api/space_api.dart';
import 'package:nplone_api/src/api/static_api.dart';
import 'package:nplone_api/src/api/transaction_api.dart';
import 'package:nplone_api/src/api/user_api.dart';

class NploneApi {
  static const String basePath = r'https://api.nplone.com';

  final Dio dio;
  final Serializers serializers;

  NploneApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AccountApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountApi getAccountApi() {
    return AccountApi(dio, serializers);
  }

  /// Get AccountRedirectApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountRedirectApi getAccountRedirectApi() {
    return AccountRedirectApi(dio, serializers);
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get PostApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PostApi getPostApi() {
    return PostApi(dio, serializers);
  }

  /// Get ProviderApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProviderApi getProviderApi() {
    return ProviderApi(dio, serializers);
  }

  /// Get SpaceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SpaceApi getSpaceApi() {
    return SpaceApi(dio, serializers);
  }

  /// Get StaticApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StaticApi getStaticApi() {
    return StaticApi(dio, serializers);
  }

  /// Get TransactionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TransactionApi getTransactionApi() {
    return TransactionApi(dio, serializers);
  }

  /// Get UserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserApi getUserApi() {
    return UserApi(dio, serializers);
  }
}
