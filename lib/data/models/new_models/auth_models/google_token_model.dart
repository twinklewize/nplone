import 'package:n_plus_one/domain/entities/new_entities/auth_entities/google_token_entity.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:nplone_api/api.dart';

class GoogleTokenModel extends GoogleTokenEntity {
  late final GoogleToken googleToken;

  GoogleTokenModel({
    required token,
    required country,
  }) : super(
          token: token,
          country: country,
        ) {
    googleToken = GoogleToken(token: token, country: country);
  }

  GoogleTokenModel.fromGoogleToken({
    required this.googleToken,
  }) : super(
          token: googleToken.token,
          country: googleToken.country,
        );

  Map<String, dynamic> toJson() {
    return googleToken.toJson();
  }

  factory GoogleTokenModel.fromJson(Map<String, dynamic> json) {
    return GoogleTokenModel.fromGoogleToken(
        googleToken: GoogleToken.fromJson(json));
  }
}
