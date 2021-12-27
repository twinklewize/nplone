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
> Uint8List getDefaultSpaceBanner()

Получить изображение баннера пространства по-умолчанию

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getStaticApi();

try {
    final response = api.getDefaultSpaceBanner();
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaticApi->getDefaultSpaceBanner: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDefaultSpaceImage**
> Uint8List getDefaultSpaceImage()

Получить изображение пространства по-умолчанию

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getStaticApi();

try {
    final response = api.getDefaultSpaceImage();
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaticApi->getDefaultSpaceImage: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostFile**
> Uint8List getPostFile(id, ext)

Получить файл поста

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getStaticApi();
final String id = id_example; // String | ID изображения
final String ext = ext_example; // String | 

try {
    final response = api.getPostFile(id, ext);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaticApi->getPostFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID изображения | 
 **ext** | **String**|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpaceImage**
> Uint8List getSpaceImage(id)

Получить изображение пространства

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getStaticApi();
final String id = id_example; // String | ID изображения

try {
    final response = api.getSpaceImage(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaticApi->getSpaceImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID изображения | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactionFile**
> Uint8List getTransactionFile(id, ext)

Получить файл транзакции

### Example
```dart
import 'package:nplone_api/api.dart';

final api = NploneApi().getStaticApi();
final String id = id_example; // String | ID изображения
final String ext = ext_example; // String | 

try {
    final response = api.getTransactionFile(id, ext);
    print(response);
} catch on DioError (e) {
    print('Exception when calling StaticApi->getTransactionFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID изображения | 
 **ext** | **String**|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

