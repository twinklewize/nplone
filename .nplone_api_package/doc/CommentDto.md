# nplone_api.model.CommentDto

## Load the model package
```dart
import 'package:nplone_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | ID комментария | 
**author** | [**UserSummaryDto**](UserSummaryDto.md) |  | 
**postedAt** | [**DateTime**](DateTime.md) | Когда был создан | 
**text** | **String** | Текст | 
**likes** | **int** | Кол-во лайков | 
**liked** | **bool** | Лайкнул ли этот коммент текущий юзер | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


