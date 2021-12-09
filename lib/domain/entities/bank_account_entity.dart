import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';
import 'package:n_plus_one/domain/entities/space_entity.dart';

class BankAccountEntity extends Equatable {
  /// Name of your bank account is the same name as your bank's name.
  /// But it can has postfix number. It's number of this bank account in list of bank accounts in app
  /// For example Tinkoff or Tinkoff 2
  String name;

  /// Object of Bank entity
  BankEntity bank;

  /// Status of the Bank Account (needReconnect, isReconnecting, reconnected)
  Status status;

  /// List of Space entity
  List<SpaceEntity> spaces;

  /// How much money in $ you have at this bank account
  double howMuchMoneyInDollars;

  late bool private;
  late bool buisness;

  BankAccountEntity({
    required this.name,
    required this.bank,
    required this.status,
    required this.spaces,
    required this.howMuchMoneyInDollars,
    private = false,
    buisness = false,
  });

  @override
  List<Object?> get props => [name, bank, spaces, howMuchMoneyInDollars];
}

enum Status {
  needReconnect,
  isReconnecting,
  reconnected,
}
