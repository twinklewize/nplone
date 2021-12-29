import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/features/bank_account_adding/domain/usecases/get_all_banks.dart';
import 'package:n_plus_one/features/bank_account_adding/presentation/bloc/bank_list_bloc/bank_list_event.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_entity.dart';
import 'bank_list_states.dart';

const SERVER_FAILURE_MESSAGE = 'Server Failure';

class BankListBloc extends Bloc<BankListEvent, BankListState> {
  final GetAllBanks getAllBanks;
  Either<Failure, List<BankEntity>>? failureOrBank;

  BankListBloc({required this.getAllBanks}) : super(BankListEmptyState()) {
    on<BankListLoadEvent>(
      (event, emit) async {
        emit(BankListLoadingState());
        if (failureOrBank == null) {
          failureOrBank = await getAllBanks(NoParams());
        }
        failureOrBank!.fold(
            (failure) => emit(
                BankListErrorState(message: _mapFailureToMessage(failure))),
            (banks) {
          emit(BankListLoadedState(banks: banks));
        });
      },
    );
    on<BankListSearhEvent>(
      (event, emit) async {
        emit(BankListLoadingState());
        if (failureOrBank == null) {
          failureOrBank = await getAllBanks(NoParams());
        }
        failureOrBank!.fold(
          (failure) =>
              emit(BankListErrorState(message: _mapFailureToMessage(failure))),
          (banks) {
            if (event.bankQuery == '') {
              emit(BankListSearchState(banks: banks));
            } else {
              emit(BankListSearchState(
                  banks: banks
                      .where((bank) => bank.name
                          .toLowerCase()
                          .contains(event.bankQuery.toLowerCase()))
                      .toList()));
            }
          },
        );
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
