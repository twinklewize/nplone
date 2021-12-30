import 'dart:convert';
import 'package:n_plus_one/core/error_and_success/exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/bank_account_model.dart';

abstract class BankAccountsLocalDataSource {
  /// Gets the cached [List<BankAccoutModel>] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<List<BankAccountModel>> getLastBankAccountsFromCache();
  Future<void> bankAccountsToCache(List<BankAccountModel> bankAccounts);
}

// ignore: constant_identifier_names
const CACHED_BANK_ACCOUNTS_LIST = 'CACHED_BANK_ACCOUNTS_LIST';

class BankAccountsLocalDataSourceImpl implements BankAccountsLocalDataSource {
  final SharedPreferences sharedPreferences;

  BankAccountsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<BankAccountModel>> getLastBankAccountsFromCache() {
    final jsonBankAccountsList =
        sharedPreferences.getStringList(CACHED_BANK_ACCOUNTS_LIST);
    if (jsonBankAccountsList!.isNotEmpty) {
      print('Get Persons from Cache: ${jsonBankAccountsList.length}');
      return Future.value(jsonBankAccountsList
          .map((bankAccount) =>
              BankAccountModel.fromJson(json.decode(bankAccount)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<List<String>> bankAccountsToCache(List<BankAccountModel> persons) {
    final List<String> jsonBankAccountList = persons
        .map((bankAccount) => json.encode(bankAccount.toJson()))
        .toList();
    sharedPreferences.setStringList(
        CACHED_BANK_ACCOUNTS_LIST, jsonBankAccountList);
    print('Bank accounts to write Cache: ${jsonBankAccountList.length}');
    return Future.value(jsonBankAccountList);
  }
}
