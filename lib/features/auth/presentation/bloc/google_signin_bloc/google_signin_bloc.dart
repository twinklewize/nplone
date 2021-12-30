import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/core/error_and_success/failure.dart';
import 'package:n_plus_one/core/error_and_success/success.dart';
import 'package:n_plus_one/core/localization/generated/l10n.dart';
import 'package:n_plus_one/core/usecases/usecase.dart';
import 'package:n_plus_one/features/auth/domain/usecases/google_sign_in_usecase.dart';

part 'google_signin_event.dart';
part 'google_signin_state.dart';

class GoogleSigninBloc extends Bloc<GoogleSigninEvent, GoogleSigninState> {
  final GoogleSingInUsecase googleSingInUsecase;

  GoogleSigninBloc({required this.googleSingInUsecase})
      : super(GoogleSigninInitial()) {
    on<UserGoogleSigninEvent>((event, emit) async {
      emit(GoogleSigninLoadingState());
      final failureOrSuccess = await googleSingInUsecase(NoParams());
      failureOrSuccess.fold(
          (failure) => emit(GoogleSigninFailedState(
              errorMessage: _mapFailureToMessage(failure, event.context))),
          (success) {
        if (success is LoginSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              event.context, '/spaces-hub', (Route<dynamic> route) => false);
        }
        if (success is RegisterSuccess) {
          Navigator.pushNamedAndRemoveUntil(
              event.context, '/onboardin', (Route<dynamic> route) => false);
        }
      });
    });
  }

  String _mapFailureToMessage(Failure failure, BuildContext context) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return S.of(context).startPageGoogleSignInServerFailure;
      case NoInternetConnectionFailure:
        return S.of(context).startPageGoogleSignInServerFailure;
      default:
        return 'Unexpected Error';
    }
  }
}
