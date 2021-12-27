import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  String get message => 'Default Failure';
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  String get message => 'Server Failure';
}

class NoInternetConnectionFailure extends Failure {
  String get message => 'No Internet connection';
}

class AuthFailure extends Failure {
  final String message;
  AuthFailure({required this.message});
}

class CacheFailure extends Failure {
  String get message => 'Cache Failure';
}
