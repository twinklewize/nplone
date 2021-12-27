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
> BuiltList<Account> getAccounts()

Получить все счета

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP basic authorization: auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').password = 'YOUR_PASSWORD';

final api = NploneApi().getAccountApi();

try {
    final response = api.getAccounts();
    print(response);
} catch on DioError (e) {
    print('Exception when calling AccountApi->getAccounts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Account&gt;**](Account.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

