// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../oauth_sign_in_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OAuthSignInEntity _$OAuthSignInEntityFromJson(Map<String, dynamic> json) =>
    OAuthSignInEntity(
      accessToken: json['accessToken'] as String? ?? '',
      refreshToken: json['refreshToken'] as String? ?? '',
      member:
          json['member'] == null
              ? const OAuthSignInMemberEntity()
              : OAuthSignInMemberEntity.fromJson(
                json['member'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$OAuthSignInEntityToJson(OAuthSignInEntity instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'member': instance.member,
    };

OAuthSignInMemberEntity _$OAuthSignInMemberEntityFromJson(
  Map<String, dynamic> json,
) => OAuthSignInMemberEntity(
  id: (json['id'] as num?)?.toInt() ?? -1,
  nickname: json['nickname'] as String?,
);

Map<String, dynamic> _$OAuthSignInMemberEntityToJson(
  OAuthSignInMemberEntity instance,
) => <String, dynamic>{'id': instance.id, 'nickname': instance.nickname};
