import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/oauth_sign_in_entity.g.dart';

@JsonSerializable()
class OAuthSignInEntity {
  factory OAuthSignInEntity.fromJson(Map<String, dynamic> json) =>
      _$OAuthSignInEntityFromJson(json);

  const OAuthSignInEntity({
    this.accessToken = '',
    this.refreshToken = '',
    this.member = const OAuthSignInMemberEntity(),
  });
  final String accessToken;
  final String refreshToken;
  final OAuthSignInMemberEntity member;
}

@JsonSerializable()
class OAuthSignInMemberEntity {
  factory OAuthSignInMemberEntity.fromJson(Map<String, dynamic> json) =>
      _$OAuthSignInMemberEntityFromJson(json);

  const OAuthSignInMemberEntity({this.id = -1, this.nickname});

  final int id;
  final String? nickname;
}
