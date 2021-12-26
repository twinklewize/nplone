//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthApi {
  AuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Аутентификация через аккаунт Google
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GoogleToken] googleToken (required):
  Future<Response> googleSignInWithHttpInfo(GoogleToken googleToken,) async {
    // Verify required params are set.
    if (googleToken == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: googleToken');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/googlesignin';

    // ignore: prefer_final_locals
    Object postBody = googleToken;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Аутентификация через аккаунт Google
  ///
  /// Parameters:
  ///
  /// * [GoogleToken] googleToken (required):
  Future<TokenInfo> googleSignIn(GoogleToken googleToken,) async {
    final response = await googleSignInWithHttpInfo(googleToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenInfo',) as TokenInfo;
    
    }
    return Future<TokenInfo>.value();
  }

  /// Войти под пользователем
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserLogin] userLogin (required):
  Future<Response> loginWithHttpInfo(UserLogin userLogin,) async {
    // Verify required params are set.
    if (userLogin == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userLogin');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/login';

    // ignore: prefer_final_locals
    Object postBody = userLogin;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Войти под пользователем
  ///
  /// Parameters:
  ///
  /// * [UserLogin] userLogin (required):
  Future<TokenInfo> login(UserLogin userLogin,) async {
    final response = await loginWithHttpInfo(userLogin,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenInfo',) as TokenInfo;
    
    }
    return Future<TokenInfo>.value();
  }

  /// Зарегистрировать нового пользователя в системе
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UserRegister] userRegister (required):
  Future<Response> registerUserWithHttpInfo(UserRegister userRegister,) async {
    // Verify required params are set.
    if (userRegister == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: userRegister');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/register';

    // ignore: prefer_final_locals
    Object postBody = userRegister;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Зарегистрировать нового пользователя в системе
  ///
  /// Parameters:
  ///
  /// * [UserRegister] userRegister (required):
  Future<void> registerUser(UserRegister userRegister,) async {
    final response = await registerUserWithHttpInfo(userRegister,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
