part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class UserRegisterEvent extends RegisterEvent {
  final UserRegisterEntity userRegisterEntity;

  UserRegisterEvent(
    this.userRegisterEntity,
  );

  @override
  List<Object> get props => [userRegisterEntity];
}

class AddEmailAndPasswordEvent extends RegisterEvent {
  final String email;
  final String password;

  AddEmailAndPasswordEvent({
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [email, password];
}

class AddCountryEvent extends RegisterEvent {
  final String country;

  AddCountryEvent({
    required this.country,
  });

  @override
  List<Object> get props => [country];
}
