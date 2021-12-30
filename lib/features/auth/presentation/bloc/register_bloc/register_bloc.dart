import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/features/auth/domain/entities/country_entity.dart';
import 'package:n_plus_one/features/auth/domain/entities/user_register_entity.dart';
import 'package:n_plus_one/features/auth/domain/usecases/register_user_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUserUsecase registerUsecase;
  late String? email;
  late String? password;
  late CountryEntity? country;

  RegisterBloc({required this.registerUsecase}) : super(RegisterInitial()) {
    on<AddEmailAndPasswordEvent>((event, emit) {});
    on<AddCountryEvent>(
      (event, emit) {
        country = event.country;
        emit(RegisterCountryAddedState(country: country!));
      },
    );
    on<UserRegisterEvent>((event, emit) {});
  }
}
