# nplone_api.model.TransactionItemDto

## Load the model package
```dart
import 'package:nplone_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID транзакции | 
**accountId** | **String** | ID счёта | 
**amount** | [**AccountBalance**](AccountBalance.md) |  | 
**bookedAt** | [**DateTime**](DateTime.md) | Когда транзакция была подтверждена банком | 
**description** | **String** | Описание | [optional] 
**merchant** | [**Merchant**](Merchant.md) |  | [optional] 
**type** | **String** | Тип транзакции | 
**posted** | **bool** | Опубликована ли транзакция | 
**comments** | **int** | Количество комментариев к транзакции | 
**files** | **int** | Количество файлов к транзакции | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


