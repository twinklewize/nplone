import 'package:n_plus_one/domain/entities/new_entities/auth_entities/token_info_entity.dart';
import 'package:nplone_api/nplone_api.dart';

class TokenInfoModel extends TokenInfoEntity {
  late final TokenInfo tokenInfo;

  TokenInfoModel({
    required accessToken,
    required userId,
  }) : super(
          accessToken: accessToken,
          userId: userId,
        ) {
    tokenInfo = TokenInfo((TokenInfoBuilder tokenInfoBuilder) {
      tokenInfoBuilder.accessToken = accessToken;
      tokenInfoBuilder.userId = userId;
    });
  }

  TokenInfoModel.fromTokenInfo({
    required this.tokenInfo,
  }) : super(
          accessToken: tokenInfo.accessToken,
          userId: tokenInfo.userId,
        );
}
