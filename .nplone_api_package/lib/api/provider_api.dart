//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProviderApi {
  ProviderApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Получить список провайдеров
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/providers';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Получить список провайдеров
  Future<List<Provider>> getProviders() async {
    final response = await getProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Provider>') as List)
        .cast<Provider>()
        .toList(growable: false);

    }
    return Future<List<Provider>>.value();
  }

  /// Создать ссылку для добавления нового провайдера
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///
  /// * [List<String>] segments (required):
  ///
  /// * [String] acceptLanguage:
  Future<Response> initiateProviderConnectionWithHttpInfo(String provider, List<String> segments, { String acceptLanguage, }) async {
    // Verify required params are set.
    if (provider == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: provider');
    }
    if (segments == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: segments');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/providers/initiate-connection';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'provider', provider));
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'segments', segments));

    if (acceptLanguage != null) {
      headerParams[r'Accept-Language'] = parameterToString(acceptLanguage);
    }

    const authNames = <String>['auth'];
    const contentTypes = <String>[];


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

  /// Создать ссылку для добавления нового провайдера
  ///
  /// Parameters:
  ///
  /// * [String] provider (required):
  ///
  /// * [List<String>] segments (required):
  ///
  /// * [String] acceptLanguage:
  Future<AccountConnectionInitiationDto> initiateProviderConnection(String provider, List<String> segments, { String acceptLanguage, }) async {
    final response = await initiateProviderConnectionWithHttpInfo(provider, segments,  acceptLanguage: acceptLanguage, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountConnectionInitiationDto',) as AccountConnectionInitiationDto;
    
    }
    return Future<AccountConnectionInitiationDto>.value();
  }
}
