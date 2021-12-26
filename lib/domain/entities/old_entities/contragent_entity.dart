import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/old_entities/bank_account_entity.dart';

class ContragentEntity extends Equatable {
  /// Id лица, с которым произошла транзакция
  final String id;

  /// имя лица, с которым произошла транзакция
  final String name;

  /// Банк лица, c которым произошла транзакция
  final BankAccountEntity bankAccount;

  ///  лица, c которым произошла транзакция
  final String imageUrl;

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
