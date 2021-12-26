# nplone_api.model.PostItemDto

## Load the model package
```dart
import 'package:nplone_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID поста | 
**postedWhen** | [**DateTime**](DateTime.md) | Когда был опубликован | 
**title** | **String** | Название поста | 
**descriptionStripped** | **String** | Текст поста | 
**icon** | **String** | URL иконки | 
**type** | **String** | Тип поста | 
**likes** | **int** | Количество лайков | 
**liked** | **bool** | Лайкнул ли пост пользователь | 
**comments** | **int** | Количество комментариев к посту | 
**transactionBalances** | [**List<AccountBalance>**](AccountBalance.md) | Балансы прикреплённых транзакций | [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


