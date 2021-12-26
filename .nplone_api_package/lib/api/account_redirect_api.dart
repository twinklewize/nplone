//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AccountRedirectApi {
  AccountRedirectApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Закончить flow добавления провайдера
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] state (required):
  Future<Response> finishAccountRedirectWithHttpInfo(String state,) async {
    // Verify required params are set.
    if (state == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: state');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/account-redirect/finish';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'state', state));

    const authNames = <String>['auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Закончить flow добавления провайдера
  ///
  /// Parameters:
  ///
  /// * [String] state (required):
  Future<void> finishAccountRedirect(String state,) async {
    final response = await finishAccountRedirectWithHttpInfo(state,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Начать flow добавления провайдера
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  ///   Код
  Future<Response> startAccountRedirectWithHttpInfo(String code,) async {
    // Verify required params are set.
    if (code == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: code');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/account-redirect/start';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'code', code));

    const authNames = <String>['auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Начать flow добавления провайдера
  ///
  /// Parameters:
  ///
  /// * [String] code (required):
  ///   Код
  Future<void> startAccountRedirect(String code,) async {
    final response = await startAccountRedirectWithHttpInfo(code,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
