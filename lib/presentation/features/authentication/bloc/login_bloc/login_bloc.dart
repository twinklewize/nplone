import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/error/success.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
import 'package:n_plus_one/domain/usecases/new_usecases/auth_usecases/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase loginUsecase;
  Either<Failure, Success>? failureOrSuccess;

  LoginBloc({required this.loginUsecase}) : super(LoginInitial()) {
    on<UserLoginEvent>(
      (event, emit) {
        failureOrSuccess!.fold(
            (failure) => emit(
                LoginFailedState(errorMessage: _mapFailureToMessage(failure))),
            (success) {
          emit(LoginSuccessfullState());
        });
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server Failure';
      case NoInternetConnectionFailure:
        return 'No Internet Connection';
      default:
        return 'Unexpected Error';
    }
  }
}
