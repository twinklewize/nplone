# nplone_api.api.TransactionApi

## Load the API package
```dart
import 'package:nplone_api/api.dart';
```

All URIs are relative to *https://api.nplone.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addComment**](TransactionApi.md#addcomment) | **POST** /api/v1/transactions/{id}/comments | Добавить комментарий
[**addFileToTransaction**](TransactionApi.md#addfiletotransaction) | **POST** /api/v1/transactions/{id}/files | Добавить файл к транзакции
[**createPost1**](TransactionApi.md#createpost1) | **POST** /api/v1/transactions/{id}/create-post | 
[**editTransaction**](TransactionApi.md#edittransaction) | **PATCH** /api/v1/transactions/{id} | Изменить информацию о транзакции
[**getComments**](TransactionApi.md#getcomments) | **GET** /api/v1/transactions/{id}/comments | Получить комментарии
[**getTransactionFiles**](TransactionApi.md#gettransactionfiles) | **GET** /api/v1/transactions/{id}/files | Получить прикреплённые файлы транзакции
[**getTransactionInfo**](TransactionApi.md#gettransactioninfo) | **GET** /api/v1/transactions/{id} | Получить полную информацию от транзакции
[**likeComment**](TransactionApi.md#likecomment) | **POST** /api/v1/transactions/{id}/comments/{comment}/like | Лайкнуть комментарий
[**removeFileFromTransaction**](TransactionApi.md#removefilefromtransaction) | **DELETE** /api/v1/transactions/{id}/files/{fid} | Удалить файл из транзакции


# **addComment**
> CommentDto addComment(id, commentPostDto)

Добавить комментарий

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getTransactionApi();
final String id = id_example; // String | ID транзакции
final CommentPostDto commentPostDto = ; // CommentPostDto | 

try {
    final response = api.addComment(id, commentPostDto);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TransactionApi->addComment: $e\n');
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

# **addFileToTransaction**
> FileDto addFileToTransaction(id, inlineObject2)

Добавить файл к транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getTransactionApi();
final String id = id_example; // String | ID транзакции
final InlineObject2 inlineObject2 = ; // InlineObject2 | 

try {
    final response = api.addFileToTransaction(id, inlineObject2);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TransactionApi->addFileToTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 
 **inlineObject2** | [**InlineObject2**](InlineObject2.md)|  | [optional] 

### Return type

[**FileDto**](FileDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPost1**
> createPost1(id)



### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getTransactionApi();
final String id = id_example; // String | 

try {
    api.createPost1(id);
} catch on DioError (e) {
    print('Exception when calling TransactionApi->createPost1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTransaction**
> editTransaction(id, transactionEditDto)

Изменить информацию о транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getTransactionApi();
final String id = id_example; // String | ID транзакции
final TransactionEditDto transactionEditDto = ; // TransactionEditDto | 

try {
    api.editTransaction(id, transactionEditDto);
} catch on DioError (e) {
    print('Exception when calling TransactionApi->editTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 
 **transactionEditDto** | [**TransactionEditDto**](TransactionEditDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComments**
> CommentListDto getComments(id, page, size)

Получить комментарии

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getTransactionApi();
final String id = id_example; // String | ID транзакции
final int page = 789; // int | Страница
final int size = 56; // int | Размер страницы

try {
    final response = api.getComments(id, page, size);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TransactionApi->getComments: $e\n');
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

# **getTransactionFiles**
> FileListDto getTransactionFiles(id)

Получить прикреплённые файлы транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getTransactionApi();
final String id = id_example; // String | ID транзакции

try {
    final response = api.getTransactionFiles(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TransactionApi->getTransactionFiles: $e\n');
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

# **getTransactionInfo**
> TransactionDetailsDto getTransactionInfo(id, space)

Получить полную информацию от транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getTransactionApi();
final String id = id_example; // String | ID транзакции
final String space = space_example; // String | ID пространства для проверки публикации

try {
    final response = api.getTransactionInfo(id, space);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TransactionApi->getTransactionInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 
 **space** | **String**| ID пространства для проверки публикации | [optional] 

### Return type

[**TransactionDetailsDto**](TransactionDetailsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **likeComment**
> likeComment(id, comment)

Лайкнуть комментарий

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getTransactionApi();
final String id = id_example; // String | ID транзакции
final int comment = 789; // int | ID комментария

try {
    api.likeComment(id, comment);
} catch on DioError (e) {
    print('Exception when calling TransactionApi->likeComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID транзакции | 
 **comment** | **int**| ID комментария | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeFileFromTransaction**
> removeFileFromTransaction(id, fid)

Удалить файл из транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getTransactionApi();
final String id = id_example; // String | ID транзакции
final String fid = fid_example; // String | ID файла

try {
    api.removeFileFromTransaction(id, fid);
} catch on DioError (e) {
    print('Exception when calling TransactionApi->removeFileFromTransaction: $e\n');
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

