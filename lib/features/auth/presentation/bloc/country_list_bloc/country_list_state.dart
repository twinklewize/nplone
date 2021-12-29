part of '../../../../../features/auth/presentation/bloc/country_list_bloc/country_list_bloc.dart';

abstract class CountryListState extends Equatable {
  const CountryListState();

  @override
  List<Object> get props => [];
}

class CountryListInitial extends CountryListState {}

class CountryListLoadingState extends CountryListState {}

class CountryListLoadedState extends CountryListState {
  final List<CountryEntity> countries;

  CountryListLoadedState({required this.countries});

  @override
  List<Object> get props => [countries];
}

class CountryListSearchState extends CountryListState {
  final List<CountryEntity> countries;

  CountryListSearchState({required this.countries});

  @override
  List<Object> get props => [countries];
}

class CountryListErrorState extends CountryListState {
  final String message;

  CountryListErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
