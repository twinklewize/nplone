import 'package:n_plus_one/features/auth/domain/entities/google_token_entity.dart';
import 'package:nplone_api/nplone_api.dart';

class GoogleTokenModel extends GoogleTokenEntity {
  late final GoogleToken googleToken;

  GoogleTokenModel({
    required token,
    required country,
  }) : super(
          token: token,
          country: country,
        ) {
    googleToken = GoogleToken((GoogleTokenBuilder googleTokenBuilder) {
      googleTokenBuilder.token = token;
      googleTokenBuilder.country = country;
    });
  }

  GoogleTokenModel.fromGoogleToken({
    required this.googleToken,
  }) : super(
          token: googleToken.token,
          country: googleToken.country,
        );
}
