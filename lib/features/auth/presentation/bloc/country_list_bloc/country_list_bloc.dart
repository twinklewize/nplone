import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';
import 'package:n_plus_one/features/auth/domain/usecases/get_all_countries_usecase.dart';

part 'country_list_event.dart';
part 'country_list_state.dart';

class CountryListBloc extends Bloc<CountryListEvent, CountryListState> {
  final GetAllCountries getAllCountries;
  Either<Failure, List<CountryEntity>>? failureOrCountry;

  CountryListBloc({required this.getAllCountries})
      : super(CountryListInitial()) {
    on<CountryListLoadEvent>(
      (event, emit) async {
        emit(CountryListLoadingState());
        if (failureOrCountry == null) {
          failureOrCountry = await getAllCountries(NoParams());
        }
        failureOrCountry!.fold(
            (failure) => emit(
                CountryListErrorState(message: _mapFailureToMessage(failure))),
            (countries) {
          emit(CountryListLoadedState(countries: countries));
        });
      },
    );
    on<CountryListSearhEvent>(
      (event, emit) async {
        emit(CountryListLoadingState());
        if (failureOrCountry == null) {
          failureOrCountry = await getAllCountries(NoParams());
        }
        failureOrCountry!.fold(
          (failure) => emit(
              CountryListErrorState(message: _mapFailureToMessage(failure))),
          (countries) {
            if (event.countryQuery == '') {
              emit(CountryListSearchState(countries: countries));
            } else {
              emit(CountryListSearchState(
                  countries: countries
                      .where((country) => country.countryName
                          .toLowerCase()
                          .contains(event.countryQuery.toLowerCase()))
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
        return 'Server Failure';
      default:
        return 'Unexpected Error';
    }
  }
}
