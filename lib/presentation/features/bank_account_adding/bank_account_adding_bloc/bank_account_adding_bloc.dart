import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/domain/entities/bank_entity.dart';
import 'bank_account_adding_bloc_states.dart';
import 'bank_account_adding_event.dart';

class BankAccountAddingBloc
    extends Bloc<BankAccountAddingEvent, BankAccountAddingState> {
  BankAccountAddingBloc()
      : super(BankAccountAddingNoChoosenState(private: true)) {
    BankEntity? bank;
    bool private = true;

    on<BankAccountAddingChooseEvent>(
      (event, emit) async {
        bank = event.bankQuery;
        emit(BankAccountAddingChoosenState(
          bank: bank!,
          private: private,
        ));
      },
    );
    on<BankAccountAddingPrivateEvent>(
      (event, emit) async {
        private = !private;
        if (bank == null) {
          emit(BankAccountAddingNoChoosenState(
            private: private,
          ));
        } else {
          emit(BankAccountAddingChoosenState(
            bank: bank!,
            private: private,
          ));
        }
      },
    );
  }
}
