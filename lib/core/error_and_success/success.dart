import 'package:equatable/equatable.dart';

abstract class Success<T> extends Equatable {
  final T? value;
  Success({this.value});

  @override
  List<Object?> get props => [value];
}

class LoginSuccess<T> extends Success {
  final T? value;
  LoginSuccess({this.value}) : super(value: value);
}

class RegisterSuccess<T> extends Success {
  final T? value;
  RegisterSuccess({this.value}) : super(value: value);
}
