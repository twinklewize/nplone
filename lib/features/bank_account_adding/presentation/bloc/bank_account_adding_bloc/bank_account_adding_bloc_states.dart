import 'package:equatable/equatable.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_entity.dart';

abstract class BankAccountAddingState extends Equatable {
  const BankAccountAddingState();

  @override
  List<Object> get props => [];
}

// No bank choosen
class BankAccountAddingNoChoosenState extends BankAccountAddingState {
  final bool private;
  final bool buisness;

  BankAccountAddingNoChoosenState({
    required this.private,
    required this.buisness,
  });

  @override
  List<Object> get props => [private, buisness];
}

// Bank is choosen
class BankAccountAddingChoosenState extends BankAccountAddingState {
  final BankEntity bank;
  final bool private;
  final bool buisness;

  BankAccountAddingChoosenState({
    required this.private,
    required this.buisness,
    required this.bank,
  });

  @override
  List<Object> get props => [private, buisness, bank];
}
