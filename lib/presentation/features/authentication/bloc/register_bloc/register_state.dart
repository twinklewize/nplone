part of 'register_bloc.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object> get props => [];
}

class RegisterInitial extends RegisterState {}

class RegisterFailedState extends RegisterState {
  final String errorMessage;

  RegisterFailedState({
    required this.errorMessage,
  });

  @override
  List<Object> get props => [errorMessage];
}

class RegisterLoadingState extends RegisterState {}
