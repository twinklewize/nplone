# nplone_api.api.PostApi

## Load the API package
```dart
import 'package:nplone_api/api.dart';
```

All URIs are relative to *https://api.nplone.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFileToPost**](PostApi.md#addfiletopost) | **POST** /api/v1/posts/{id}/files | Добавить файл к транзакции
[**addPostComment**](PostApi.md#addpostcomment) | **POST** /api/v1/posts/{id}/comments | Добавить комментарий
[**editPost**](PostApi.md#editpost) | **PATCH** /api/v1/posts/{id} | Изменить информацию о посте
[**getPost**](PostApi.md#getpost) | **GET** /api/v1/posts/{id} | Получить полную информацию о посте
[**getPostComments**](PostApi.md#getpostcomments) | **GET** /api/v1/posts/{id}/comments | Получить комментарии
[**getPostFiles**](PostApi.md#getpostfiles) | **GET** /api/v1/posts/{id}/files | Получить прикреплённые файлы транзакции
[**likePost**](PostApi.md#likepost) | **POST** /api/v1/posts/{id}/like | Лайкнуть пост
[**likePostComment**](PostApi.md#likepostcomment) | **POST** /api/v1/posts/{id}/comments/{comment}/like | Лайкнуть комментарий
[**removeFileFromPost**](PostApi.md#removefilefrompost) | **DELETE** /api/v1/posts/{id}/files/{fid} | Удалить файл из транзакции


# **addFileToPost**
> FileDto addFileToPost(id, inlineObject3)

Добавить файл к транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getPostApi();
final String id = id_example; // String | ID транзакции
final InlineObject3 inlineObject3 = ; // InlineObject3 | 

try {
    final response = api.addFileToPost(id, inlineObject3);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PostApi->addFileToPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 
 **inlineObject3** | [**InlineObject3**](InlineObject3.md)|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addPostComment**
> CommentDto addPostComment(id, commentPostDto)

Добавить комментарий

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getPostApi();
final String id = id_example; // String | ID транзакции
final CommentPostDto commentPostDto = ; // CommentPostDto | 

try {
    final response = api.addPostComment(id, commentPostDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PostApi->addPostComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 
 **commentPostDto** | [**CommentPostDto**](CommentPostDto.md)|  | 

### Return type

[**CommentDto**](CommentDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPost**
> editPost(id, inlineObject5)

Изменить информацию о посте

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getPostApi();
final String id = id_example; // String | ID транзакции
final InlineObject5 inlineObject5 = ; // InlineObject5 | 

try {
    api.editPost(id, inlineObject5);
} catch on DioError (e) {
    print('Exception when calling PostApi->editPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 
 **inlineObject5** | [**InlineObject5**](InlineObject5.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPost**
> PostDetailsDto getPost(id)

Получить полную информацию о посте

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getPostApi();
final String id = id_example; // String | ID поста

try {
    final response = api.getPost(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PostApi->getPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID поста | 

### Return type

[**PostDetailsDto**](PostDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostComments**
> CommentListDto getPostComments(id, page, size)

Получить комментарии

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getPostApi();
final String id = id_example; // String | ID транзакции
final int page = 789; // int | Страница
final int size = 56; // int | Размер страницы

try {
    final response = api.getPostComments(id, page, size);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PostApi->getPostComments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 
 **page** | **int**| Страница | [optional] [default to -1]
 **size** | **int**| Размер страницы | [optional] [default to 20]

### Return type

[**CommentListDto**](CommentListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostFiles**
> FileListDto getPostFiles(id)

Получить прикреплённые файлы транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getPostApi();
final String id = id_example; // String | ID транзакции

try {
    final response = api.getPostFiles(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling PostApi->getPostFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 

### Return type

[**FileListDto**](FileListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **likePost**
> likePost(id)

Лайкнуть пост

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getPostApi();
final String id = id_example; // String | ID поста

try {
    api.likePost(id);
} catch on DioError (e) {
    print('Exception when calling PostApi->likePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID поста | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **likePostComment**
> likePostComment(id, comment)

Лайкнуть комментарий

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getPostApi();
final String id = id_example; // String | ID поста
final int comment = 789; // int | ID комментария

try {
    api.likePostComment(id, comment);
} catch on DioError (e) {
    print('Exception when calling PostApi->likePostComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID поста | 
 **comment** | **int**| ID комментария | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeFileFromPost**
> removeFileFromPost(id, fid)

Удалить файл из транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getPostApi();
final String id = id_example; // String | ID транзакции
final String fid = fid_example; // String | ID файла

try {
    api.removeFileFromPost(id, fid);
} catch on DioError (e) {
    print('Exception when calling PostApi->removeFileFromPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 
 **fid** | **String**| ID файла | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

