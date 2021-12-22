import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';

abstract class BankListState extends Equatable {
  const BankListState();

  @override
  List<Object> get props => [];
}

class BankListEmptyState extends BankListState {}

class BankListLoadingState extends BankListState {}

class BankListLoadedState extends BankListState {
  final List<BankEntity> banks;

  BankListLoadedState({required this.banks});

  @override
  List<Object> get props => [banks];
}

class BankListSearchState extends BankListState {
  final List<BankEntity> banks;

  BankListSearchState({required this.banks});

  @override
  List<Object> get props => [banks];
}

class BankListErrorState extends BankListState {
  final String message;

  BankListErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
