part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UserLoginEvent extends LoginEvent {
  final UserLoginEntity userLoginEntity;
  final BuildContext context;

  UserLoginEvent(
    this.userLoginEntity,
    this.context,
  );

  @override
  List<Object> get props => [userLoginEntity, context];
}
