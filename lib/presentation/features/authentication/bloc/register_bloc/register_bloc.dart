import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_register_entity.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  late final String? email;
  late final String? password;
  late final String? country;

  RegisterBloc() : super(RegisterInitial()) {
    on<AddEmailAndPasswordEvent>((event, emit) {});
    on<AddCountryEvent>((event, emit) {});
    on<UserRegisterEvent>((event, emit) {});
  }
}
