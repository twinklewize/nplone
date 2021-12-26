# nplone_api.api.ProviderApi

## Load the API package
```dart
import 'package:nplone_api/api.dart';
```

All URIs are relative to *https://api.nplone.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getProviders**](ProviderApi.md#getproviders) | **GET** /api/v1/providers | Получить список провайдеров
[**initiateProviderConnection**](ProviderApi.md#initiateproviderconnection) | **POST** /api/v1/providers/initiate-connection | Создать ссылку для добавления нового провайдера


# **getProviders**
> List<Provider> getProviders()

Получить список провайдеров

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProviderApi();

try {
    final result = api_instance.getProviders();
    print(result);
} catch (e) {
    print('Exception when calling ProviderApi->getProviders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Provider>**](Provider.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiateProviderConnection**
> AccountConnectionInitiationDto initiateProviderConnection(provider, segments, acceptLanguage)

Создать ссылку для добавления нового провайдера

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP Bearer authorization: auth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('auth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ProviderApi();
final provider = provider_example; // String | 
final segments = []; // List<String> | 
final acceptLanguage = acceptLanguage_example; // String | 

try {
    final result = api_instance.initiateProviderConnection(provider, segments, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling ProviderApi->initiateProviderConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String**|  | 
 **segments** | [**List<String>**](String.md)|  | [default to const []]
 **acceptLanguage** | **String**|  | [optional] [default to 'EN']

### Return type

[**AccountConnectionInitiationDto**](AccountConnectionInitiationDto.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

