import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/bank_account_entity.dart';

abstract class SpacesHubState extends Equatable {
  const SpacesHubState();

  @override
  List<Object> get props => [];
}

/// Состояние, при котором происходит загрузка данных
class BankAccountsLoading extends SpacesHubState {}

/// Состояние, при котором все данные успешно загружены
class BankAccountsLoaded extends SpacesHubState {
  List<BankAccountEntity> bankAccounts;

  BankAccountsLoaded({required this.bankAccounts});

  @override
  List<Object> get props => [bankAccounts];
}

/// Состояние, при котором открыта вкладка My Spaces и при загрузке данных произошла ошибка
class BankAccountsLoadingError extends SpacesHubState {
  final String message;

  const BankAccountsLoadingError({required this.message});

  @override
  List<Object> get props => [message];
}
