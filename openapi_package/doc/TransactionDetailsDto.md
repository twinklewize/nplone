# nplone_api.model.TransactionDetailsDto

## Load the model package
```dart
import 'package:nplone_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID транзакции | 
**amount** | [**AccountBalance**](AccountBalance.md) |  | 
**bookedAt** | [**DateTime**](DateTime.md) | Когда транзакция была подтверждена банком | 
**description** | **String** | Описание | [optional] 
**merchant** | [**Merchant**](Merchant.md) |  | [optional] 
**type** | **String** | Тип транзакции | [optional] 
**accountDetails** | [**TransactionAccountDetails**](TransactionAccountDetails.md) |  | [optional] 
**originator** | [**UserSummaryDto**](UserSummaryDto.md) |  | [optional] 
**published** | **bool** | Опубликована | 
**publisher** | [**UserSummaryDto**](UserSummaryDto.md) |  | [optional] 
**viewConfiguration** | [**TransactionViewConfiguration**](TransactionViewConfiguration.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


