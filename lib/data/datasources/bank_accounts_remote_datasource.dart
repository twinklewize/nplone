import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:n_plus_one/core/error/exception.dart';
import '../models/bank_account_model.dart';

// TODO удалить это говно
var dummyResponse = jsonEncode(
  [
    {
      "bankName": "Tinkoff",
      "name": "Tinkoff",
      "imageURL":
          "https://helpcapital.ru/media/k2/items/cache/a42a2aa6c7440291c38ba9adc5892a56_XL.jpg",
      "status": "reconnected",
      "spaces": [
        {
          "id": "id1234567",
          "imageUrl": "https://cdn1.ozone.ru/s3/multimedia-0/6048032424.jpg",
          "privacy": "openPublicSpace",
          "howManyPeopleInSpace": 100,
        },
      ],
      "howMuchMoneyInDollars": 5012.10,
    },
  ],
);

abstract class BankAccountsRemoteDataSource {
  /// Calls the https://rickandmortyapi.com/api/character/?page=1 endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<BankAccountModel>> getBankAccouts(String userId);
}

class BankAccountsRemoteDataSourceImpl implements BankAccountsRemoteDataSource {
  final http.Client client;

  BankAccountsRemoteDataSourceImpl({required this.client});

  // TODO change url
  @override
  Future<List<BankAccountModel>> getBankAccouts(String userId) =>
      _getBankAccountsFromUrl(
          'https://rickandmortyapi.com/api/character/?page=$userId');

  Future<List<BankAccountModel>> _getBankAccountsFromUrl(String url) async {
    print(url);
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
