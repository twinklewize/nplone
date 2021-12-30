part of 'google_signin_bloc.dart';

abstract class GoogleSigninEvent extends Equatable {
  const GoogleSigninEvent();

  @override
  List<Object> get props => [];
}

class UserGoogleSigninEvent extends GoogleSigninEvent {
  final BuildContext context;

  UserGoogleSigninEvent(
    this.context,
  );

  @override
  List<Object> get props => [context];
}
