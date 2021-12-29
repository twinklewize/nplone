import 'package:equatable/equatable.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_entity.dart';

abstract class BankAccountAddingEvent extends Equatable {
  const BankAccountAddingEvent();

  @override
  List<Object> get props => [];
}

// Choose bank
class BankAccountAddingChooseEvent extends BankAccountAddingEvent {
  final BankEntity bankQuery;

  BankAccountAddingChooseEvent(this.bankQuery);

  @override
  List<Object> get props => [bankQuery];
}

// Private checkbox change state
class BankAccountAddingPrivateEvent extends BankAccountAddingEvent {}

// Buisness checkbox change state
class BankAccountAddingBuisnessEvent extends BankAccountAddingEvent {}
