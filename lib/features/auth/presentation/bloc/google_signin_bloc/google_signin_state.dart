part of 'google_signin_bloc.dart';

abstract class GoogleSigninState extends Equatable {
  const GoogleSigninState();

  @override
  List<Object> get props => [];
}

class GoogleSigninInitial extends GoogleSigninState {}
