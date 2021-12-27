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
> BuiltList<Provider> getProviders()

Получить список провайдеров

### Example
```dart
import 'package:nplone_api/api.dart';
// TODO Configure HTTP basic authorization: auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').password = 'YOUR_PASSWORD';

final api = NploneApi().getProviderApi();

try {
    final response = api.getProviders();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProviderApi->getProviders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Provider&gt;**](Provider.md)

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
// TODO Configure HTTP basic authorization: auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('auth').password = 'YOUR_PASSWORD';

final api = NploneApi().getProviderApi();
final String provider = provider_example; // String | 
final BuiltList<String> segments = ; // BuiltList<String> | 
final String acceptLanguage = acceptLanguage_example; // String | 

try {
    final response = api.initiateProviderConnection(provider, segments, acceptLanguage);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ProviderApi->initiateProviderConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String**|  | 
 **segments** | [**BuiltList&lt;String&gt;**](String.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'EN']

### Return type

[**AccountConnectionInitiationDto**](AccountConnectionInitiationDto.md)

### Authorization

[auth](../README.md#auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

