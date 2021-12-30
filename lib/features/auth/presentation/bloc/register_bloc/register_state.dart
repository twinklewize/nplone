part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterCountryAddedState extends RegisterState {
  final CountryEntity country;

  RegisterCountryAddedState({
    required this.country,
  });

  @override
  List<CountryEntity> get props => [country];
}

class RegisterFailedState extends RegisterState {
  final String errorMessage;

  RegisterFailedState({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];
}

class RegisterLoadingState extends RegisterState {
  final CountryEntity country;

  RegisterLoadingState({
    required this.country,
  });

  @override
  List<CountryEntity> get props => [country];
}
