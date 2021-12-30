import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/features/auth/domain/usecases/google_sign_in_usecase.dart';

part 'google_signin_event.dart';
part 'google_signin_state.dart';

class GoogleSigninBloc extends Bloc<GoogleSigninEvent, GoogleSigninState> {
  final GoogleSingInUsecase googleSingInUsecase;

  GoogleSigninBloc({required this.googleSingInUsecase})
      : super(GoogleSigninInitial()) {
    on<GoogleSigninEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
