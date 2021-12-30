import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/core/error/failure.dart';
import 'package:n_plus_one/core/localization/generated/l10n.dart';
import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/user_login_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/user_register_entity.dart';
import 'package:n_plus_one/features/auth/domain/usecases/login_usecase.dart';
import 'package:n_plus_one/features/auth/domain/usecases/register_user_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUserUsecase registerUsecase;
  final LoginUsecase loginUsecase;
  late String email;
  late String password;
  late CountryEntity? country;

  RegisterBloc({required this.loginUsecase, required this.registerUsecase})
      : super(RegisterInitial()) {
    on<AddEmailAndPasswordEvent>((event, emit) {
      email = event.email;
      password = event.password;
    });
    on<AddCountryEvent>(
      (event, emit) {
        country = event.country;
        emit(RegisterCountryAddedState(country: country!));
      },
    );
    on<UserRegisterEvent>((event, emit) async {
      emit(RegisterLoadingState(country: country!));
      final registerFailureOrSuccess = await registerUsecase(
        RegisterUserParams(
          userRegister: UserRegisterEntity(
            country: country!.countryCode,
            email: email,
            password: password,
          ),
        ),
      );

      // Register
      registerFailureOrSuccess.fold(
        // Register Failure
        (failure) => emit(RegisterFailedState(
            errorMessage: _mapFailureToMessage(failure, event.context))),

        // Login
        (success) async {
          final loginFailureOrSuccess = await loginUsecase(
            LoginParams(
              userLogin: UserLoginEntity(
                email: email,
                password: password,
              ),
            ),
          );

          // Login Failure
          loginFailureOrSuccess.fold(
            (failure) => emit(RegisterFailedState(
                errorMessage: _mapFailureToMessage(failure, event.context))),
            (success) {
              // Onboarding
              Navigator.pushNamedAndRemoveUntil(event.context, '/onboarding',
                  (Route<dynamic> route) => false);
            },
          );
        },
      );
    });
  }

  String _mapFailureToMessage(Failure failure, BuildContext context) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return S.of(context).countryChoosingPageServerFailure;
      case NoInternetConnectionFailure:
        return S.of(context).countryChoosingPageNoInternetConnectionFailure;
      case RegisterFailure:
        return S.of(context).countryChoosingPageRegisterFailure;
      default:
        return 'Unexpected Error';
    }
  }
}
