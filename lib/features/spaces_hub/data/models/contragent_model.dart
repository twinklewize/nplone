import 'package:n_plus_one/features/spaces_hub/data/models/bank_account_model.dart';
import 'package:n_plus_one/features/spaces_hub/data/models/bank_model.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/contragent_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/space_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/transaction_entity.dart';

class ContragentModel extends ContragentEntity {
  ContragentModel({
    required id,
    required name,
    required bankAccount,
    required imageUrl,
  }) : super(
          id: id,
          name: name,
          bankAccount: bankAccount,
          imageUrl: imageUrl,
        );

  factory ContragentModel.fromJson(Map<String, dynamic> json) {
    return ContragentModel(
      id: json['id'],
      name: json['name'],
      bankAccount: BankAccountEntity(
        name: json['bankAccount']['name'],
        bank: BankEntity(
          name: json['bankAccount']['bank']['name'],
          imageUrl: json['bankAccount']['bank']['imageUrl'],
        ),
        spaces: [],
        howMuchMoneyInDollars: 0,
        transactions: <TransactionEntity>[],
      ),
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'bankAccount': BankAccountModel(
        bank: BankModel(
          name: bankAccount.bank.name,
          imageUrl: bankAccount.bank.imageUrl,
        ),
        name: bankAccount.name,
        status: bankAccount.status,
        spaces: <SpaceEntity>[],
        howMuchMoneyInDollars: bankAccount.howMuchMoneyInDollars,
        transactions: <TransactionEntity>[],
      ).toJson(),
    };
  }
}
