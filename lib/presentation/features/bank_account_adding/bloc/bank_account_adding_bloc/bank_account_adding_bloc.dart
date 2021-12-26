import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/domain/entities/old_entities/bank_entity.dart';
import 'bank_account_adding_bloc_states.dart';
import 'bank_account_adding_event.dart';

class BankAccountAddingBloc
    extends Bloc<BankAccountAddingEvent, BankAccountAddingState> {
  BankAccountAddingBloc()
      : super(BankAccountAddingNoChoosenState(private: true, buisness: false)) {
    BankEntity? bank;
    bool private = true;
    bool buisness = false;

    on<BankAccountAddingChooseEvent>(
      (event, emit) async {
        bank = event.bankQuery;
        emit(BankAccountAddingChoosenState(
          bank: bank!,
          private: private,
          buisness: buisness,
        ));
      },
    );
    on<BankAccountAddingPrivateEvent>(
      (event, emit) async {
        private = !private;
        if (bank == null) {
          emit(BankAccountAddingNoChoosenState(
            private: private,
            buisness: buisness,
          ));
        } else {
          emit(BankAccountAddingChoosenState(
            bank: bank!,
            private: private,
            buisness: buisness,
          ));
        }
      },
    );
    on<BankAccountAddingBuisnessEvent>(
      (event, emit) async {
        buisness = !buisness;
        if (bank != null) {
          emit(BankAccountAddingChoosenState(
            bank: bank!,
            private: private,
            buisness: buisness,
          ));
        } else {
          emit(BankAccountAddingNoChoosenState(
            private: private,
            buisness: buisness,
          ));
        }
      },
    );
  }
}
