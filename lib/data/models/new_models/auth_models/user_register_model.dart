import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_register_entity.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:nplone_api/api.dart';

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
    userRegister = UserRegister(
      country: country,
      email: email,
      password: password,
    );
  }

  UserRegisterModel.fromUserRegister({
    required this.userRegister,
  }) : super(
          country: userRegister.country,
          email: userRegister.email,
          password: userRegister.password,
        );

  Map<String, dynamic> toJson() {
    return userRegister.toJson();
  }

  factory UserRegisterModel.fromJson(Map<String, dynamic> json) {
    return UserRegisterModel.fromUserRegister(
        userRegister: UserRegister.fromJson(json));
  }
}
