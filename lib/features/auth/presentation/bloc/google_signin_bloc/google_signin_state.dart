part of 'google_signin_bloc.dart';

abstract class GoogleSigninState extends Equatable {
  const GoogleSigninState();

  @override
  List<Object> get props => [];
}

class GoogleSigninInitial extends GoogleSigninState {}

class GoogleSigninFailedState extends GoogleSigninState {
  final String errorMessage;

  GoogleSigninFailedState({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];
}

class GoogleSigninLoadingState extends GoogleSigninState {}
