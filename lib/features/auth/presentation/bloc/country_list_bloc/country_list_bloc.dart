import 'dart:core';

import 'package:bloc/bloc.dart';
import 'package:country_list/country_list.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';

part 'country_list_event.dart';
part 'country_list_state.dart';

class CountryListBloc extends Bloc<CountryListEvent, CountryListState> {
  CountryListBloc() : super(CountryListInitial()) {
    List<CountryEntity> countries = [];
    on<CountryListLoadEvent>(
      (event, emit) async {
        countries = Countries.list
            .map((country) => CountryEntity(
                  countryName: country.name,
                  countryCode: country.isoCode.toLowerCase(),
                  flagEmoji: _flagEmoji(country.isoCode),
                ))
            .toList();
        emit(CountryListLoaded(countries: countries));
      },
    );
    on<CountryListSearhEvent>(
      (event, emit) async {
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
  }

  String _flagEmoji(String country) {
    int flagOffset = 0x1F1E6;
    int asciiOffset = 0x41;

    int firstChar = country.codeUnitAt(0) - asciiOffset + flagOffset;
    int secondChar = country.codeUnitAt(1) - asciiOffset + flagOffset;

    String emoji =
        String.fromCharCode(firstChar) + String.fromCharCode(secondChar);
    return emoji;
  }
}
