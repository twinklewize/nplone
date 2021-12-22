import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';
import 'package:n_plus_one/domain/entities/space_entity.dart';
import 'package:n_plus_one/domain/entities/transaction_entity.dart';

class BankAccountEntity extends Equatable {
  /// Name of your bank account is the same name as your bank's name.
  /// But it can has postfix number. It's number of this bank account in list of bank accounts in app
  /// For example Tinkoff or Tinkoff 2
  final String name;

  /// Object of Bank entity
  final BankEntity bank;

  /// Status of the Bank Account (needReconnect, isReconnecting, reconnected)
  final Status status;

  /// List of Space entity
  final List<SpaceEntity> spaces;

  final List<TransactionEntity> transactions;

  /// How much money in $ you have at this bank account
  final double howMuchMoneyInDollars;

  BankAccountEntity({
    required this.name,
    required this.bank,
    this.status = Status.reconnected,
    required this.spaces,
    required this.howMuchMoneyInDollars,
    required this.transactions,
  });

  @override
  List<Object?> get props =>
      [name, bank, spaces, howMuchMoneyInDollars, transactions];
}

enum Status {
  needReconnect,
  isReconnecting,
  reconnected,
}
