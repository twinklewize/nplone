import 'package:equatable/equatable.dart';

abstract class SpacesHubEvent extends Equatable {
  const SpacesHubEvent();

  @override
  List<Object> get props => [];
}

/// Event, при котором открыта вкладка My Spaces и происходит загрузка данных
class BankAccountsStartLoadingEvent extends SpacesHubEvent {
  final String userId;

  BankAccountsStartLoadingEvent({required this.userId});
}

/// Event, при котором открыта вкладка My Spaces и все данные успешно загружены
class BankAccountsLoadingFinishedEvent extends SpacesHubEvent {}

/// Event, при котором открыта вкладка My Spaces и при загрузке данных произошла ошибка
class BankAccountsLoadingErrorEvent extends SpacesHubEvent {}
