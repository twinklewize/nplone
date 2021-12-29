import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/localization/generated/l10n.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
import 'package:n_plus_one/domain/usecases/new_usecases/auth_usecases/login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase loginUsecase;

  LoginBloc({required this.loginUsecase}) : super(LoginInitial()) {
    on<UserLoginEvent>(
      (event, emit) async {
        emit(LoginLoadingState());
        final failureOrSuccess =
            await loginUsecase(LoginParams(userLogin: event.userLoginEntity));
        failureOrSuccess.fold(
            (failure) => emit(LoginFailedState(
                errorMessage: _mapFailureToMessage(failure, event.context))),
            (success) {
          Navigator.pushNamedAndRemoveUntil(
              event.context, '/spaces-hub', (Route<dynamic> route) => false);
        });
      },
    );
  }

  String _mapFailureToMessage(Failure failure, BuildContext context) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return S.of(context).loginPageServerFailure;
      case UserNotFoundFailure:
        return S.of(context).loginPagePasswordUserNotFoundFailure;
      case PasswordNotMatchFailure:
        return S.of(context).loginPagePasswordNotMatchFailure;
      default:
        return 'Unexpected Error';
    }
  }
}
