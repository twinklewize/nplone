import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:n_plus_one/core/error/exception.dart';
import 'package:n_plus_one/features/spaces_hub/data/models/bank_model.dart';

var dummyResponse = jsonEncode(
  [
    {"name": "Revoluot", "imageURL": "https://i.ibb.co/jbyP14J/revoluot.png"},
    {"name": "Tinkoff", "imageURL": "https://i.ibb.co/HPktmGq/tinkoff.png"},
    {
      "name": "Alpha Bank",
      "imageURL": "https://i.ibb.co/RP8NBrF/alpha-bank.png"
    },
    {"name": "Valyuz", "imageURL": "https://i.ibb.co/MBP7F6p/valyuz.png"},
    {"name": "Monzo", "imageURL": "https://i.ibb.co/CVNWVDz/monzo.png"},
    {"name": "Starling", "imageURL": "https://i.ibb.co/8m5QdYZ/starling.png"},
    {"name": "N26", "imageURL": "https://i.ibb.co/XJcTPcn/n26.png"},
    {
      "name": "Hello Bank",
      "imageURL": "https://i.ibb.co/SP2WTrV/hello-bank.png"
    },
    {"name": "Rebellion", "imageURL": "https://i.ibb.co/Tg9Bgwx/rebellion.png"},
    {"name": "Lunar", "imageURL": "https://i.ibb.co/X3Vqyph/lunar.png"},
    {"name": "Wise", "imageURL": "https://i.ibb.co/QnX3XkS/wise.png"},
  ],
);

abstract class BankRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  Future<List<BankModel>> getAllBanks();
}

class BankRemoteDataSourceImpl implements BankRemoteDataSource {
  final http.Client client;

  BankRemoteDataSourceImpl({required this.client});

  // @override
  // Future<List<BankModel>> getAllBanks() async {
  //   final response = await client
  //       .get(Uri.parse(''), headers: {'Content-Type': 'application/json'});
  //   if (response.statusCode == 200) {
  //     final banks = json.decode(response.body);
  //     return (banks['results'] as List)
  //         .map((bank) => BankModel.fromJson(bank))
  //         .toList();
  //   } else {
  //     throw ServerException();
  //   }
  // }

  @override
  Future<List<BankModel>> getAllBanks() async {
    final banks = json.decode(dummyResponse);
    return (banks as List).map((bank) => BankModel.fromJson(bank)).toList();
  }
}
