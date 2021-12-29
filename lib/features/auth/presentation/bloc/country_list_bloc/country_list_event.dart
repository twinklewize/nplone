part of '../../../../../features/auth/presentation/bloc/country_list_bloc/country_list_bloc.dart';

abstract class CountryListEvent extends Equatable {
  const CountryListEvent();

  @override
  List<Object> get props => [];
}

class CountryListSearhEvent extends CountryListEvent {
  final String countryQuery;

  CountryListSearhEvent(this.countryQuery);
}

class CountryListLoadEvent extends CountryListEvent {}
