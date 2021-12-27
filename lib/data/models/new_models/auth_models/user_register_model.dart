import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_register_entity.dart';
import 'package:nplone_api/nplone_api.dart';

class UserRegisterModel extends UserRegisterEntity {
  late final UserRegister userRegister;

  UserRegisterModel({
    required country,
    required email,
    required password,
  }) : super(
          country: country,
          email: email,
          password: password,
        ) {
    userRegister = UserRegister((UserRegisterBuilder userRegisterBuilder) {
      userRegisterBuilder.country = country;
      userRegisterBuilder.email = email;
      userRegisterBuilder.password = password;
    });
  }

  UserRegisterModel.fromUserRegister({
    required this.userRegister,
  }) : super(
          country: userRegister.country,
          email: userRegister.email,
          password: userRegister.password,
        );
}
