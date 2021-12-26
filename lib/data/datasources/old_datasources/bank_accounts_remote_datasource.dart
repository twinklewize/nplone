import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:n_plus_one/core/error/exception.dart';
import '../../models/old_models/bank_account_model.dart';

var dummyResponse = jsonEncode(
  [
    {
      "name": "Tinkoff",
      "bank": {
        "name": "Tinkoff",
        "imageUrl":
            "https://helpcapital.ru/media/k2/items/cache/a42a2aa6c7440291c38ba9adc5892a56_XL.jpg",
      },
      "status": "reconnected",
      "spaces": [
        {
          "id": "id1234567",
          "name": "My first space",
          "imageUrl": "https://cdn1.ozone.ru/s3/multimedia-0/6048032424.jpg",
          "privacy": "openPublicSpace",
          "howManyPeopleInSpace": 100,
        },
      ],
      "howMuchMoneyInDollars": 5012.10,
      "transactions": [
        // 1
        {
          "contragent": {
            "id": "contragentId",
            "name": "The Rock",
            "imageUrl":
                "https://i.pinimg.com/736x/59/68/88/596888565d98b359612ae60a85487d0b.jpg",
            "bankAccount": {
              "bank": {
                "name": "Sber",
                "imageUrl":
                    "https://46tv.ru/uploads/posts/2021-01/1609606542_aa35faf8-8251-40ec-b771-d4f23bed6d68.jpeg",
              },
              "name": "Sber",
              "status": "reconnected",
              "spaces": [],
              "howMuchMoneyInDollars": 0.00,
              "transactions": [],
            },
          },
          "transactionAmountInDollars": 1000000.00,
          "isPublished": false,
          "whenItWas": DateTime.now().toIso8601String(),
          "whenItWasPublished": DateTime.now().toIso8601String(),
          "whereItWas": 'San Diego, California',
          "transactionType": "Gift",
          "comments": [],
        },
        // 2
        {
          "contragent": {
            "id": "contragentId",
            "name": "The Rock",
            "imageUrl":
                "https://i.pinimg.com/736x/59/68/88/596888565d98b359612ae60a85487d0b.jpg",
            "bankAccount": {
              "bank": {
                "name": "Sber",
                "imageUrl":
                    "https://46tv.ru/uploads/posts/2021-01/1609606542_aa35faf8-8251-40ec-b771-d4f23bed6d68.jpeg",
              },
              "name": "Sber",
              "status": "reconnected",
              "spaces": [],
              "howMuchMoneyInDollars": 0.00,
              "transactions": [],
            },
          },
          "transactionAmountInDollars": -1000.00,
          "isPublished": true,
          "whenItWas": DateTime.now().toIso8601String(),
          "whenItWasPublished": DateTime.now().toIso8601String(),
          "whereItWas": 'San Diego, California',
          "transactionType": "Gift",
          "comments": [],
        },
        // 3
        {
          "contragent": {
            "id": "contragentId",
            "name": "The Rock",
            "imageUrl":
                "https://i.pinimg.com/736x/59/68/88/596888565d98b359612ae60a85487d0b.jpg",
            "bankAccount": {
              "bank": {
                "name": "Sber",
                "imageUrl":
                    "https://46tv.ru/uploads/posts/2021-01/1609606542_aa35faf8-8251-40ec-b771-d4f23bed6d68.jpeg",
              },
              "name": "Sber",
              "status": "reconnected",
              "spaces": [],
              "howMuchMoneyInDollars": 0.00,
              "transactions": [],
            },
          },
          "transactionAmountInDollars": -50.00,
          "isPublished": true,
          "whenItWas": DateTime.now().toIso8601String(),
          "whenItWasPublished": DateTime.now().toIso8601String(),
          "whereItWas": 'San Diego, California',
          "transactionType": "Gift",
          "comments": [],
        },
        // 4
        {
          "contragent": {
            "id": "contragentId",
            "name": "The Rock",
            "imageUrl":
                "https://i.pinimg.com/736x/59/68/88/596888565d98b359612ae60a85487d0b.jpg",
            "bankAccount": {
              "bank": {
                "name": "Sber",
                "imageUrl":
                    "https://46tv.ru/uploads/posts/2021-01/1609606542_aa35faf8-8251-40ec-b771-d4f23bed6d68.jpeg",
              },
              "name": "Sber",
              "status": "reconnected",
              "spaces": [],
              "howMuchMoneyInDollars": 0.00,
              "transactions": [],
            },
          },
          "transactionAmountInDollars": 500000.00,
          "isPublished": true,
          "whenItWas": DateTime.utc(1989, 11, 9).toIso8601String(),
          "whenItWasPublished": DateTime.now().toIso8601String(),
          "whereItWas": 'San Diego, California',
          "transactionType": "Gift",
          "comments": [],
        },
      ],
    },
    // {
    //   "bankName": "Sber",
    //   "name": "Sber",
    //   "imageURL":
    //       "https://46tv.ru/uploads/posts/2021-01/1609606542_aa35faf8-8251-40ec-b771-d4f23bed6d68.jpeg",
    //   "status": "reconnected",
    //   "spaces": [
    //     {
    //       "id": "id999999",
    //       "name": "My 2nd space",
    //       "imageUrl":
    //           "https://avatars.mds.yandex.net/get-zen_doc/3414453/pub_5ff1c737fe4e686f6adb9a7b_5ff1c858fe4e686f6add5b5a/scale_1200",
    //       "privacy": "openPublicSpace",
    //       "howManyPeopleInSpace": 2000,
    //     },
    //   ],
    //   "howMuchMoneyInDollars": 30166.10,
    // },
  ],
);

abstract class BankAccountsRemoteDataSource {
  /// Calls the https://rickandmortyapi.com/api/character/?page=1 endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<BankAccountModel>> getBankaccounts(String userId);
}

class BankAccountsRemoteDataSourceImpl implements BankAccountsRemoteDataSource {
  final http.Client client;

  BankAccountsRemoteDataSourceImpl({required this.client});

  @override
  Future<List<BankAccountModel>> getBankaccounts(String userId) =>
      _getBankAccountsFromUrl(
          'https://rickandmortyapi.com/api/character/?page=$userId');

  Future<List<BankAccountModel>> _getBankAccountsFromUrl(String url) async {
    // print(url);
    // final response = await client
    //     .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});
    //if (response.statusCode == 200) {
    //final bankAccounts = json.decode(response.body);
    final bankAccounts = jsonDecode(dummyResponse);
    return (bankAccounts as List)
        .map((account) => BankAccountModel.fromJson(account))
        .toList();

    //} else {
    //  throw ServerException();
    // }
  }
}
