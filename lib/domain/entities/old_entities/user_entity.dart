import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/old_entities/bank_account_entity.dart';

class UserEntity extends Equatable {
  /// Unique id of this user
  String id;

  /// Name of this user
  String name;

  /// Email of this user
  String email = '';

  /// User's list of bank accounts
  List<BankAccountEntity> bankAccouts = [];

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.bankAccouts,
  });

  @override
  List<Object?> get props => [id, name, email, bankAccouts];
}
