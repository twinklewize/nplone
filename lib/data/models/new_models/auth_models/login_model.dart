import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
import 'package:nplone_api/nplone_api.dart';

class UserLoginModel extends UserLoginEntity {
  late final UserLogin userLogin;

  UserLoginModel({
    required password,
    required email,
  }) : super(
          password: password,
          email: email,
        ) {
    userLogin = UserLogin((UserLoginBuilder userLoginBuilder) {
      userLoginBuilder.password = password;
      userLoginBuilder.email = email;
    });
  }

  UserLoginModel.fromUserLogin({
    required this.userLogin,
  }) : super(
          password: userLogin.password,
          email: userLogin.email,
        );
}
