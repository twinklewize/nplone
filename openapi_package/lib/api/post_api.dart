//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PostApi {
  PostApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Добавить файл к транзакции
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [InlineObject3] inlineObject3:
  Future<Response> addFileToPostWithHttpInfo(String id, { InlineObject3 inlineObject3, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/posts/{id}/files'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = inlineObject3;

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
  /// * [InlineObject3] inlineObject3:
  Future<FileDto> addFileToPost(String id, { InlineObject3 inlineObject3, }) async {
    final response = await addFileToPostWithHttpInfo(id,  inlineObject3: inlineObject3, );
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
  Future<Response> addPostCommentWithHttpInfo(String id, CommentPostDto commentPostDto,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (commentPostDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: commentPostDto');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/posts/{id}/comments'
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
  Future<CommentDto> addPostComment(String id, CommentPostDto commentPostDto,) async {
    final response = await addPostCommentWithHttpInfo(id, commentPostDto,);
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

  /// Изменить информацию о посте
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [InlineObject5] inlineObject5:
  Future<Response> editPostWithHttpInfo(String id, { InlineObject5 inlineObject5, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/posts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object postBody = inlineObject5;

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

  /// Изменить информацию о посте
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID транзакции
  ///
  /// * [InlineObject5] inlineObject5:
  Future<void> editPost(String id, { InlineObject5 inlineObject5, }) async {
    final response = await editPostWithHttpInfo(id,  inlineObject5: inlineObject5, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Получить полную информацию о посте
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID поста
  Future<Response> getPostWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/posts/{id}'
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

  /// Получить полную информацию о посте
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID поста
  Future<PostDetailsDto> getPost(String id,) async {
    final response = await getPostWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostDetailsDto',) as PostDetailsDto;
    
    }
    return Future<PostDetailsDto>.value();
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
  Future<Response> getPostCommentsWithHttpInfo(String id, { int page, int size, }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/posts/{id}/comments'
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
  Future<CommentListDto> getPostComments(String id, { int page, int size, }) async {
    final response = await getPostCommentsWithHttpInfo(id,  page: page, size: size, );
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
  Future<Response> getPostFilesWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/posts/{id}/files'
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
  Future<FileListDto> getPostFiles(String id,) async {
    final response = await getPostFilesWithHttpInfo(id,);
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

  /// Лайкнуть пост
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID поста
  Future<Response> likePostWithHttpInfo(String id,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/posts/{id}/like'
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

  /// Лайкнуть пост
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID поста
  Future<void> likePost(String id,) async {
    final response = await likePostWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Лайкнуть комментарий
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID поста
  ///
  /// * [int] comment (required):
  ///   ID комментария
  Future<Response> likePostCommentWithHttpInfo(String id, int comment,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (comment == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: comment');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/posts/{id}/comments/{comment}/like'
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
  ///   ID поста
  ///
  /// * [int] comment (required):
  ///   ID комментария
  Future<void> likePostComment(String id, int comment,) async {
    final response = await likePostCommentWithHttpInfo(id, comment,);
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
  Future<Response> removeFileFromPostWithHttpInfo(String id, String fid,) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (fid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fid');
    }

    // ignore: prefer_const_declarations
    final path = r'/api/v1/posts/{id}/files/{fid}'
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
  Future<void> removeFileFromPost(String id, String fid,) async {
    final response = await removeFileFromPostWithHttpInfo(id, fid,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
