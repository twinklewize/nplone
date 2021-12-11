import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/domain/usecases/get_all_bank_accouts.dart';
import '../spaces_hub_bloc/spaces_hub_events.dart';
import '../spaces_hub_bloc/spaces_hub_states.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';
const CACHED_FAILURE_MESSAGE = 'Cache Failure';

class SpacesHubBloc extends Bloc<SpacesHubEvent, SpacesHubState> {
  LoadUserBankAccounts loadUserBankAccounts;

  SpacesHubBloc({required this.loadUserBankAccounts})
      : super(BankAccountsLoaded(bankAccounts: [])) {
    on<BankAccountsStartLoadingEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
      SpacesHubEvent event, Emitter<SpacesHubState> emit) async {
    emit(BankAccountsLoading());
    if (event is BankAccountsStartLoadingEvent) {
      final failureOrBankAccounts = await loadUserBankAccounts(
          LoadBankAccoutsParams(userId: event.userId));
      print(event.userId);
      emit(failureOrBankAccounts.fold(
          (failure) =>
              BankAccountsLoadingError(message: _mapFailureToMessage(failure)),
          (bankAccounts) => BankAccountsLoaded(bankAccounts: bankAccounts)));
    }
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHED_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
