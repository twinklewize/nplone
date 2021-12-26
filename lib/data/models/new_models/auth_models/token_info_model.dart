import 'package:n_plus_one/domain/entities/new_entities/auth_entities/token_info_entity.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:nplone_api/api.dart';

class TokenInfoModel extends TokenInfoEntity {
  late final TokenInfo tokenInfo;

  TokenInfoModel({
    required accessToken,
    required userId,
  }) : super(
          accessToken: accessToken,
          userId: userId,
        ) {
    tokenInfo = TokenInfo(accessToken: accessToken, userId: userId);
  }

  TokenInfoModel.fromTokenInfo({
    required this.tokenInfo,
  }) : super(
          accessToken: tokenInfo.accessToken,
          userId: tokenInfo.userId,
        );

  Map<String, dynamic> toJson() {
    return tokenInfo.toJson();
  }

  factory TokenInfoModel.fromJson(Map<String, dynamic> json) {
    return TokenInfoModel.fromTokenInfo(tokenInfo: TokenInfo.fromJson(json));
  }
}
