import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/bank_account_entity.dart';

class ContragentEntity extends Equatable {
  /// Id лица, с которым произошла транзакция
  String id;

  /// имя лица, с которым произошла транзакция
  String name;

  /// Банк лица, c которым произошла транзакция
  BankAccountEntity bankAccount;

  ///  лица, c которым произошла транзакция
  String imageUrl;

  ContragentEntity({
    required this.name,
    required this.id,
    required this.bankAccount,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        name,
        id,
        bankAccount,
        imageUrl,
      ];
}
