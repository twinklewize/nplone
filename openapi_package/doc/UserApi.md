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
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserApi();

try {
    api_instance.deleteUser();
} catch (e) {
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
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserApi();

try {
    final result = api_instance.getUserInfo();
    print(result);
} catch (e) {
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

