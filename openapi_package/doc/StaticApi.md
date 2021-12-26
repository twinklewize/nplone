# nplone_api.api.StaticApi

## Load the API package
```dart
import 'package:nplone_api/api.dart';
```

All URIs are relative to *https://api.nplone.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDefaultSpaceBanner**](StaticApi.md#getdefaultspacebanner) | **GET** /static/space/default_banner.jpg | Получить изображение баннера пространства по-умолчанию
[**getDefaultSpaceImage**](StaticApi.md#getdefaultspaceimage) | **GET** /static/space/default.jpg | Получить изображение пространства по-умолчанию
[**getPostFile**](StaticApi.md#getpostfile) | **GET** /static/post/{id}.{ext} | Получить файл поста
[**getSpaceImage**](StaticApi.md#getspaceimage) | **GET** /static/space/{id}.jpg | Получить изображение пространства
[**getTransactionFile**](StaticApi.md#gettransactionfile) | **GET** /static/transaction/{id}.{ext} | Получить файл транзакции


# **getDefaultSpaceBanner**
> MultipartFile getDefaultSpaceBanner()

Получить изображение баннера пространства по-умолчанию

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = StaticApi();

try {
    final result = api_instance.getDefaultSpaceBanner();
    print(result);
} catch (e) {
    print('Exception when calling StaticApi->getDefaultSpaceBanner: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDefaultSpaceImage**
> MultipartFile getDefaultSpaceImage()

Получить изображение пространства по-умолчанию

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = StaticApi();

try {
    final result = api_instance.getDefaultSpaceImage();
    print(result);
} catch (e) {
    print('Exception when calling StaticApi->getDefaultSpaceImage: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostFile**
> MultipartFile getPostFile(id, ext)

Получить файл поста

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = StaticApi();
final id = id_example; // String | ID изображения
final ext = ext_example; // String | 

try {
    final result = api_instance.getPostFile(id, ext);
    print(result);
} catch (e) {
    print('Exception when calling StaticApi->getPostFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID изображения | 
 **ext** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpaceImage**
> MultipartFile getSpaceImage(id)

Получить изображение пространства

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = StaticApi();
final id = id_example; // String | ID изображения

try {
    final result = api_instance.getSpaceImage(id);
    print(result);
} catch (e) {
    print('Exception when calling StaticApi->getSpaceImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID изображения | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionFile**
> MultipartFile getTransactionFile(id, ext)

Получить файл транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api_instance = StaticApi();
final id = id_example; // String | ID изображения
final ext = ext_example; // String | 

try {
    final result = api_instance.getTransactionFile(id, ext);
    print(result);
} catch (e) {
    print('Exception when calling StaticApi->getTransactionFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID изображения | 
 **ext** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

