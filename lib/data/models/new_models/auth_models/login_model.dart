import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:nplone_api/api.dart';

class UserLoginModel extends UserLoginEntity {
  late final UserLogin userLogin;

  UserLoginModel({
    required password,
    required email,
  }) : super(
          password: password,
          email: email,
        ) {
    userLogin = UserLogin(email: email, password: password);
  }

  UserLoginModel.fromUserLogin({
    required this.userLogin,
  }) : super(
          password: userLogin.password,
          email: userLogin.email,
        );

  Map<String, dynamic> toJson() {
    return userLogin.toJson();
  }

  factory UserLoginModel.fromJson(Map<String, dynamic> json) {
    return UserLoginModel.fromUserLogin(userLogin: UserLogin.fromJson(json));
  }
}
