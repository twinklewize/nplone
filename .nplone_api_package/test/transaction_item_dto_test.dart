import 'package:test/test.dart';
import 'package:nplone_api/nplone_api.dart';

// tests for TransactionItemDto
void main() {
  final instance = TransactionItemDtoBuilder();
  // TODO add properties to the builder and call build()

  group(TransactionItemDto, () {
    // ID транзакции
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // ID счёта
    // String accountId
    test('to test the property `accountId`', () async {
      // TODO
    });

    // AccountBalance amount
    test('to test the property `amount`', () async {
      // TODO
    });

    // Когда транзакция была подтверждена банком
    // DateTime bookedAt
    test('to test the property `bookedAt`', () async {
      // TODO
    });

    // Описание
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Merchant merchant
    test('to test the property `merchant`', () async {
      // TODO
    });

    // Тип транзакции
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Опубликована ли транзакция
    // bool posted
    test('to test the property `posted`', () async {
      // TODO
    });

    // Количество комментариев к транзакции
    // int comments
    test('to test the property `comments`', () async {
      // TODO
    });

    // Количество файлов к транзакции
    // int files
    test('to test the property `files`', () async {
      // TODO
    });

  });
}
