# nplone_api.api.AccountApi

## Load the API package
```dart
import 'package:nplone_api/api.dart';
```

All URIs are relative to *https://api.nplone.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAccounts**](AccountApi.md#getaccounts) | **GET** /api/v1/accounts | Получить все счета


# **getAccounts**
> List<Account> getAccounts()

Получить все счета

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AccountApi();

try {
    final result = api_instance.getAccounts();
    print(result);
} catch (e) {
    print('Exception when calling AccountApi->getAccounts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Account>**](Account.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

