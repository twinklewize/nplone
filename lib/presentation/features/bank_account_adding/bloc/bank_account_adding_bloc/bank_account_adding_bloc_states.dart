import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';

abstract class BankAccountAddingState extends Equatable {
  const BankAccountAddingState();

  @override
  List<Object> get props => [];
}

class BankAccountAddingNoChoosenState extends BankAccountAddingState {
  final bool private;

  BankAccountAddingNoChoosenState({
    required this.private,
  });

  @override
  List<Object> get props => [private];
}

class BankAccountAddingChoosenState extends BankAccountAddingState {
  final BankEntity bank;
  final bool private;

  BankAccountAddingChoosenState({
    required this.private,
    required this.bank,
  });

  @override
  List<Object> get props => [private, bank];
}
