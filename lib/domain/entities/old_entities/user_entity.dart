import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/old_entities/bank_account_entity.dart';

class UserEntity extends Equatable {
  /// Unique id of this user
  final String id;

  /// Name of this user
  final String name;

  /// Email of this user
  final String email;

  /// User's list of bank accounts
  final List<BankAccountEntity> bankaccounts;

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.bankaccounts,
  });

  @override
  List<Object?> get props => [id, name, email, bankaccounts];
}
