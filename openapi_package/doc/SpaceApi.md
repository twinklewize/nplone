# nplone_api.api.SpaceApi

## Load the API package
```dart
import 'package:nplone_api/api.dart';
```

All URIs are relative to *https://api.nplone.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPost**](SpaceApi.md#createpost) | **PUT** /api/v1/spaces/{id}/posts | Создать пост
[**createSpace**](SpaceApi.md#createspace) | **PUT** /api/v1/spaces | Создать новое пространство
[**deleteSpace**](SpaceApi.md#deletespace) | **DELETE** /api/v1/spaces/{id} | Удалить пространство
[**editSpace**](SpaceApi.md#editspace) | **PATCH** /api/v1/spaces/{id} | Изменить пространство
[**getPosts**](SpaceApi.md#getposts) | **GET** /api/v1/spaces/{id}/posts | Получить посты
[**getSpace**](SpaceApi.md#getspace) | **GET** /api/v1/spaces/{id} | Получить полную информацию о пространстве
[**getSpaceBankingInfo**](SpaceApi.md#getspacebankinginfo) | **GET** /api/v1/spaces/{id}/banking | Изменить банковскую информацию по пространству
[**getSpacePostedTransactions**](SpaceApi.md#getspacepostedtransactions) | **GET** /api/v1/spaces/{id}/posted-transactions | Получить опубликованные транзакции в пространстве
[**getSpaceTransactions**](SpaceApi.md#getspacetransactions) | **GET** /api/v1/spaces/{id}/transactions | Изменить транзакции в пространстве
[**getSpaces**](SpaceApi.md#getspaces) | **GET** /api/v1/spaces | Получить пространства


# **createPost**
> createPost(id, inlineObject1)

Создать пост

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = SpaceApi();
final id = id_example; // String | ID пространства
final inlineObject1 = InlineObject1(); // InlineObject1 | 

try {
    api_instance.createPost(id, inlineObject1);
} catch (e) {
    print('Exception when calling SpaceApi->createPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID пространства | 
 **inlineObject1** | [**InlineObject1**](InlineObject1.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSpace**
> SpaceItem createSpace(inlineObject)

Создать новое пространство

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpaceApi();
final inlineObject = InlineObject(); // InlineObject | 

try {
    final result = api_instance.createSpace(inlineObject);
    print(result);
} catch (e) {
    print('Exception when calling SpaceApi->createSpace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**SpaceItem**](SpaceItem.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSpace**
> deleteSpace(id)

Удалить пространство

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpaceApi();
final id = id_example; // String | ID пространства

try {
    api_instance.deleteSpace(id);
} catch (e) {
    print('Exception when calling SpaceApi->deleteSpace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID пространства | 

### Return type

void (empty response body)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editSpace**
> SpaceItem editSpace(id, inlineObject4)

Изменить пространство

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpaceApi();
final id = id_example; // String | ID пространства
final inlineObject4 = InlineObject4(); // InlineObject4 | 

try {
    final result = api_instance.editSpace(id, inlineObject4);
    print(result);
} catch (e) {
    print('Exception when calling SpaceApi->editSpace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID пространства | 
 **inlineObject4** | [**InlineObject4**](InlineObject4.md)|  | [optional] 

### Return type

[**SpaceItem**](SpaceItem.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPosts**
> PostListDto getPosts(id, page)

Получить посты

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = SpaceApi();
final id = id_example; // String | ID пространства
final page = 789; // int | Страница

try {
    final result = api_instance.getPosts(id, page);
    print(result);
} catch (e) {
    print('Exception when calling SpaceApi->getPosts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID пространства | 
 **page** | **int**| Страница | [optional] [default to -1]

### Return type

[**PostListDto**](PostListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpace**
> Space getSpace(id)

Получить полную информацию о пространстве

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpaceApi();
final id = id_example; // String | ID пространства

try {
    final result = api_instance.getSpace(id);
    print(result);
} catch (e) {
    print('Exception when calling SpaceApi->getSpace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID пространства | 

### Return type

[**Space**](Space.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpaceBankingInfo**
> SpaceBankingInfo getSpaceBankingInfo(id)

Изменить банковскую информацию по пространству

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpaceApi();
final id = id_example; // String | ID пространства

try {
    final result = api_instance.getSpaceBankingInfo(id);
    print(result);
} catch (e) {
    print('Exception when calling SpaceApi->getSpaceBankingInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID пространства | 

### Return type

[**SpaceBankingInfo**](SpaceBankingInfo.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpacePostedTransactions**
> TransactionListDto getSpacePostedTransactions(id, page)

Получить опубликованные транзакции в пространстве

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpaceApi();
final id = id_example; // String | ID пространства
final page = page_example; // String | Cтраница

try {
    final result = api_instance.getSpacePostedTransactions(id, page);
    print(result);
} catch (e) {
    print('Exception when calling SpaceApi->getSpacePostedTransactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID пространства | 
 **page** | **String**| Cтраница | [optional] [default to '-1']

### Return type

[**TransactionListDto**](TransactionListDto.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpaceTransactions**
> TransactionListDto getSpaceTransactions(id, page)

Изменить транзакции в пространстве

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpaceApi();
final id = id_example; // String | ID пространства
final page = page_example; // String | Cтраница

try {
    final result = api_instance.getSpaceTransactions(id, page);
    print(result);
} catch (e) {
    print('Exception when calling SpaceApi->getSpaceTransactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID пространства | 
 **page** | **String**| Cтраница | [optional] 

### Return type

[**TransactionListDto**](TransactionListDto.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpaces**
> SpaceList getSpaces(size, page)

Получить пространства

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SpaceApi();
final size = 56; // int | Размер страницы
final page = 56; // int | Страница (с 0)

try {
    final result = api_instance.getSpaces(size, page);
    print(result);
} catch (e) {
    print('Exception when calling SpaceApi->getSpaces: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **size** | **int**| Размер страницы | [optional] [default to 50]
 **page** | **int**| Страница (с 0) | [optional] [default to 0]

### Return type

[**SpaceList**](SpaceList.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

