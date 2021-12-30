import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  String get message => 'Default Failure';
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  String get message => 'Server Failure';
}

class CacheFailure extends Failure {
  String get message => 'Cache Failure';
}

// Auth Failures
class NoInternetConnectionFailure extends Failure {
  String get message => 'No Internet connection';
}

class UserNotFoundFailure extends Failure {
  String get message => 'No User Found Failure';
}

class PasswordNotMatchFailure extends Failure {
  String get message => "Password Not Match Failure";
}

class RegisterFailure extends Failure {
  String get message => "Registration Failure";
}
