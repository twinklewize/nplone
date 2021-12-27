// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
// import 'package:n_plus_one/domain/usecases/new_usecases/auth_usecases/login_usecase.dart';

// part 'login_event.dart';
// part 'login_state.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   final LoginUsecase loginUsecase;
//   Either<Failure, List<BankEntity>>? failureOrLogin;

//   LoginBloc() : super(LoginInitial()) {
//     on<UserLoginEvent>(
//       (event, emit) {
//         emit(
//           BankAccountAddingChoosenState(
//             bank: bank!,
//             private: private,
//             buisness: buisness,
//           ),
//         );
//       },
//     );
//   }
// }
