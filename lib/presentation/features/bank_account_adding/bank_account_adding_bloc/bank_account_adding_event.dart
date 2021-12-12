import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';

abstract class BankAccountAddingEvent extends Equatable {
  const BankAccountAddingEvent();

  @override
  List<Object> get props => [];
}

class BankAccountAddingChooseEvent extends BankAccountAddingEvent {
  final BankEntity bankQuery;

  BankAccountAddingChooseEvent(this.bankQuery);
}

class BankAccountAddingPrivateEvent extends BankAccountAddingEvent {}
