//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TransactionApi {
  TransactionApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Добавить комментарий
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [CommentPostDto] commentPostDto (required):
  Future<Response> addCommentWithHttpInfo(String id, CommentPostDto commentPostDto,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (commentPostDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: commentPostDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/transactions/{id}/comments'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = commentPostDto;

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

  /// Добавить комментарий
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [CommentPostDto] commentPostDto (required):
  Future<CommentDto> addComment(String id, CommentPostDto commentPostDto,) async {
    final response = await addCommentWithHttpInfo(id, commentPostDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommentDto',) as CommentDto;
    
    }
    return Future<CommentDto>.value();
  }

  /// Добавить файл к транзакции
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [InlineObject2] inlineObject2:
  Future<Response> addFileToTransactionWithHttpInfo(String id, { InlineObject2 inlineObject2, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/transactions/{id}/files'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = inlineObject2;

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

  /// Добавить файл к транзакции
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [InlineObject2] inlineObject2:
  Future<FileDto> addFileToTransaction(String id, { InlineObject2 inlineObject2, }) async {
    final response = await addFileToTransactionWithHttpInfo(id,  inlineObject2: inlineObject2, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileDto',) as FileDto;
    
    }
    return Future<FileDto>.value();
  }

  /// Performs an HTTP 'POST /api/v1/transactions/{id}/create-post' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> createPost1WithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/transactions/{id}/create-post'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> createPost1(String id,) async {
    final response = await createPost1WithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Изменить информацию о транзакции
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [TransactionEditDto] transactionEditDto (required):
  Future<Response> editTransactionWithHttpInfo(String id, TransactionEditDto transactionEditDto,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (transactionEditDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: transactionEditDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/transactions/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = transactionEditDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Изменить информацию о транзакции
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [TransactionEditDto] transactionEditDto (required):
  Future<void> editTransaction(String id, TransactionEditDto transactionEditDto,) async {
    final response = await editTransactionWithHttpInfo(id, transactionEditDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Получить комментарии
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [int] page:
  ///   Страница
  ///
  /// * [int] size:
  ///   Размер страницы
  Future<Response> getCommentsWithHttpInfo(String id, { int page, int size, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/transactions/{id}/comments'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
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

  /// Получить комментарии
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [int] page:
  ///   Страница
  ///
  /// * [int] size:
  ///   Размер страницы
  Future<CommentListDto> getComments(String id, { int page, int size, }) async {
    final response = await getCommentsWithHttpInfo(id,  page: page, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommentListDto',) as CommentListDto;
    
    }
    return Future<CommentListDto>.value();
  }

  /// Получить прикреплённые файлы транзакции
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  Future<Response> getTransactionFilesWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/transactions/{id}/files'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Получить прикреплённые файлы транзакции
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  Future<FileListDto> getTransactionFiles(String id,) async {
    final response = await getTransactionFilesWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileListDto',) as FileListDto;
    
    }
    return Future<FileListDto>.value();
  }

  /// Получить полную информацию от транзакции
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [String] space:
  ///   ID пространства для проверки публикации
  Future<Response> getTransactionInfoWithHttpInfo(String id, { String space, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/transactions/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (space != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'space', space));
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

  /// Получить полную информацию от транзакции
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [String] space:
  ///   ID пространства для проверки публикации
  Future<TransactionDetailsDto> getTransactionInfo(String id, { String space, }) async {
    final response = await getTransactionInfoWithHttpInfo(id,  space: space, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TransactionDetailsDto',) as TransactionDetailsDto;
    
    }
    return Future<TransactionDetailsDto>.value();
  }

  /// Лайкнуть комментарий
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [int] comment (required):
  ///   ID комментария
  Future<Response> likeCommentWithHttpInfo(String id, int comment,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (comment == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: comment');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/transactions/{id}/comments/{comment}/like'
      .replaceAll('{id}', id)
      .replaceAll('{comment}', comment.toString());

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Лайкнуть комментарий
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [int] comment (required):
  ///   ID комментария
  Future<void> likeComment(String id, int comment,) async {
    final response = await likeCommentWithHttpInfo(id, comment,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Удалить файл из транзакции
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [String] fid (required):
  ///   ID файла
  Future<Response> removeFileFromTransactionWithHttpInfo(String id, String fid,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (fid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fid');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/transactions/{id}/files/{fid}'
      .replaceAll('{id}', id)
      .replaceAll('{fid}', fid);

    // ignore: prefer_final_locals
    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const authNames = <String>[];
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

  /// Удалить файл из транзакции
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [String] fid (required):
  ///   ID файла
  Future<void> removeFileFromTransaction(String id, String fid,) async {
    final response = await removeFileFromTransactionWithHttpInfo(id, fid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
