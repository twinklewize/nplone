part of 'country_list_bloc.dart';

abstract class CountryListState extends Equatable {
  const CountryListState();

  @override
  List<Object> get props => [];
}

class CountryListInitial extends CountryListState {}

class CountryListLoaded extends CountryListState {
  final List<CountryEntity> countries;

  CountryListLoaded({required this.countries});

  @override
  List<Object> get props => [countries];
}

class CountryListSearchState extends CountryListState {
  final List<CountryEntity> countries;

  CountryListSearchState({required this.countries});

  @override
  List<Object> get props => [countries];
}
