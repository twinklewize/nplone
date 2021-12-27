# nplone_api.api.AccountRedirectApi

## Load the API package
```dart
import 'package:nplone_api/api.dart';
```

All URIs are relative to *https://api.nplone.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finishAccountRedirect**](AccountRedirectApi.md#finishaccountredirect) | **GET** /api/v1/account-redirect/finish | Закончить flow добавления провайдера
[**startAccountRedirect**](AccountRedirectApi.md#startaccountredirect) | **GET** /api/v1/account-redirect/start | Начать flow добавления провайдера


# **finishAccountRedirect**
> finishAccountRedirect(state)

Закончить flow добавления провайдера

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP basic authorization: auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').password = 'YOUR_PASSWORD';

final api = NploneApi().getAccountRedirectApi();
final String state = state_example; // String | 

try {
    api.finishAccountRedirect(state);
} catch on DioError (e) {
    print('Exception when calling AccountRedirectApi->finishAccountRedirect: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startAccountRedirect**
> startAccountRedirect(code)

Начать flow добавления провайдера

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP basic authorization: auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').password = 'YOUR_PASSWORD';

final api = NploneApi().getAccountRedirectApi();
final String code = code_example; // String | Код

try {
    api.startAccountRedirect(code);
} catch on DioError (e) {
    print('Exception when calling AccountRedirectApi->startAccountRedirect: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Код | 

### Return type

void (empty response body)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

