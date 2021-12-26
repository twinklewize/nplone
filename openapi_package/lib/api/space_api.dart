//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SpaceApi {
  SpaceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Создать пост
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [InlineObject1] inlineObject1:
  Future<Response> createPostWithHttpInfo(String id, { InlineObject1 inlineObject1, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces/{id}/posts'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = inlineObject1;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Создать пост
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [InlineObject1] inlineObject1:
  Future<void> createPost(String id, { InlineObject1 inlineObject1, }) async {
    final response = await createPostWithHttpInfo(id,  inlineObject1: inlineObject1, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Создать новое пространство
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InlineObject] inlineObject:
  Future<Response> createSpaceWithHttpInfo({ InlineObject inlineObject, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces';

    // ignore: prefer_final_locals
    Object postBody = inlineObject;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['auth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Создать новое пространство
  ///
  /// Parameters:
  ///
  /// * [InlineObject] inlineObject:
  Future<SpaceItem> createSpace({ InlineObject inlineObject, }) async {
    final response = await createSpaceWithHttpInfo( inlineObject: inlineObject, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpaceItem',) as SpaceItem;
    
    }
    return Future<SpaceItem>.value();
  }

  /// Удалить пространство
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  Future<Response> deleteSpaceWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['auth'];
    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Удалить пространство
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  Future<void> deleteSpace(String id,) async {
    final response = await deleteSpaceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Изменить пространство
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [InlineObject4] inlineObject4:
  Future<Response> editSpaceWithHttpInfo(String id, { InlineObject4 inlineObject4, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = inlineObject4;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>['auth'];
    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes[0],
      authNames,
    );
  }

  /// Изменить пространство
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [InlineObject4] inlineObject4:
  Future<SpaceItem> editSpace(String id, { InlineObject4 inlineObject4, }) async {
    final response = await editSpaceWithHttpInfo(id,  inlineObject4: inlineObject4, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpaceItem',) as SpaceItem;
    
    }
    return Future<SpaceItem>.value();
  }

  /// Получить посты
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [int] page:
  ///   Страница
  Future<Response> getPostsWithHttpInfo(String id, { int page, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces/{id}/posts'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }

    const authNames = <String>[];
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

  /// Получить посты
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [int] page:
  ///   Страница
  Future<PostListDto> getPosts(String id, { int page, }) async {
    final response = await getPostsWithHttpInfo(id,  page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostListDto',) as PostListDto;
    
    }
    return Future<PostListDto>.value();
  }

  /// Получить полную информацию о пространстве
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  Future<Response> getSpaceWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces/{id}'
      .replaceAll('{id}', id);

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

  /// Получить полную информацию о пространстве
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  Future<Space> getSpace(String id,) async {
    final response = await getSpaceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Space',) as Space;
    
    }
    return Future<Space>.value();
  }

  /// Изменить банковскую информацию по пространству
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  Future<Response> getSpaceBankingInfoWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces/{id}/banking'
      .replaceAll('{id}', id);

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

  /// Изменить банковскую информацию по пространству
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  Future<SpaceBankingInfo> getSpaceBankingInfo(String id,) async {
    final response = await getSpaceBankingInfoWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpaceBankingInfo',) as SpaceBankingInfo;
    
    }
    return Future<SpaceBankingInfo>.value();
  }

  /// Получить опубликованные транзакции в пространстве
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [String] page:
  ///   Cтраница
  Future<Response> getSpacePostedTransactionsWithHttpInfo(String id, { String page, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces/{id}/posted-transactions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }

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

  /// Получить опубликованные транзакции в пространстве
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [String] page:
  ///   Cтраница
  Future<TransactionListDto> getSpacePostedTransactions(String id, { String page, }) async {
    final response = await getSpacePostedTransactionsWithHttpInfo(id,  page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransactionListDto',) as TransactionListDto;
    
    }
    return Future<TransactionListDto>.value();
  }

  /// Изменить транзакции в пространстве
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [String] page:
  ///   Cтраница
  Future<Response> getSpaceTransactionsWithHttpInfo(String id, { String page, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces/{id}/transactions'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }

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

  /// Изменить транзакции в пространстве
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID пространства
  ///
  /// * [String] page:
  ///   Cтраница
  Future<TransactionListDto> getSpaceTransactions(String id, { String page, }) async {
    final response = await getSpaceTransactionsWithHttpInfo(id,  page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransactionListDto',) as TransactionListDto;
    
    }
    return Future<TransactionListDto>.value();
  }

  /// Получить пространства
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] size:
  ///   Размер страницы
  ///
  /// * [int] page:
  ///   Страница (с 0)
  Future<Response> getSpacesWithHttpInfo({ int size, int page, }) async {
    // Verify required params are set.

    // ignore: prefer_const_declarations
    final path = r'/api/v1/spaces';

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }

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

  /// Получить пространства
  ///
  /// Parameters:
  ///
  /// * [int] size:
  ///   Размер страницы
  ///
  /// * [int] page:
  ///   Страница (с 0)
  Future<SpaceList> getSpaces({ int size, int page, }) async {
    final response = await getSpacesWithHttpInfo( size: size, page: page, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpaceList',) as SpaceList;
    
    }
    return Future<SpaceList>.value();
  }
}
