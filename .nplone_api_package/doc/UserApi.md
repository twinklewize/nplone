# nplone_api.api.UserApi

## Load the API package
```dart
import 'package:nplone_api/api.dart';
```

All URIs are relative to *https://api.nplone.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUser**](UserApi.md#deleteuser) | **DELETE** /api/v1/user | Удалить пользователя
[**getUserInfo**](UserApi.md#getuserinfo) | **GET** /api/v1/user | Получить информацию о пользователе


# **deleteUser**
> deleteUser()

Удалить пользователя

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP basic authorization: auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').password = 'YOUR_PASSWORD';

final api = NploneApi().getUserApi();

try {
    api.deleteUser();
} catch on DioError (e) {
    print('Exception when calling UserApi->deleteUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInfo**
> UserInfo getUserInfo()

Получить информацию о пользователе

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP basic authorization: auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').password = 'YOUR_PASSWORD';

final api = NploneApi().getUserApi();

try {
    final response = api.getUserInfo();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UserApi->getUserInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInfo**](UserInfo.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

