# nplone_api.api.AuthApi

## Load the API package
```dart
import 'package:nplone_api/api.dart';
```

All URIs are relative to *https://api.nplone.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**googleSignIn**](AuthApi.md#googlesignin) | **POST** /api/v1/googlesignin | Аутентификация через аккаунт Google
[**login**](AuthApi.md#login) | **POST** /api/v1/login | Войти под пользователем
[**registerUser**](AuthApi.md#registeruser) | **POST** /api/v1/register | Зарегистрировать нового пользователя в системе


# **googleSignIn**
> TokenInfo googleSignIn(googleToken)

Аутентификация через аккаунт Google

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = AuthApi();
final googleToken = GoogleToken(); // GoogleToken | 

try {
    final result = api_instance.googleSignIn(googleToken);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->googleSignIn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **googleToken** | [**GoogleToken**](GoogleToken.md)|  | 

### Return type

[**TokenInfo**](TokenInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
> TokenInfo login(userLogin)

Войти под пользователем

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = AuthApi();
final userLogin = UserLogin(); // UserLogin | 

try {
    final result = api_instance.login(userLogin);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userLogin** | [**UserLogin**](UserLogin.md)|  | 

### Return type

[**TokenInfo**](TokenInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUser**
> registerUser(userRegister)

Зарегистрировать нового пользователя в системе

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = AuthApi();
final userRegister = UserRegister(); // UserRegister | 

try {
    api_instance.registerUser(userRegister);
} catch (e) {
    print('Exception when calling AuthApi->registerUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userRegister** | [**UserRegister**](UserRegister.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

