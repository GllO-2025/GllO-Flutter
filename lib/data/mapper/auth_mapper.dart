import 'package:gllo_flutter/data/entity/auth/oauth_sign_in_entity.dart';
import 'package:gllo_flutter/domain/model/auth/oauth_sign_in_model.dart';

extension OAuthSignInEntityExt on OAuthSignInEntity {
  OAuthSignInModel toModel() => OAuthSignInModel(
    accessToken: accessToken,
    refreshToken: refreshToken,
    member: OAuthSignInMemberModel(id: member.id, nickname: member.nickname),
  );
}
