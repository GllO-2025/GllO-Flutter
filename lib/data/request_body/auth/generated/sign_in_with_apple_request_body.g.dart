// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sign_in_with_apple_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInWithAppleRequestBody _$SignInWithAppleRequestBodyFromJson(
  Map<String, dynamic> json,
) => SignInWithAppleRequestBody(
  idToken: json['idToken'] as String,
  authorizationCode: json['authorizationCode'] as String,
);

Map<String, dynamic> _$SignInWithAppleRequestBodyToJson(
  SignInWithAppleRequestBody instance,
) => <String, dynamic>{
  'idToken': instance.idToken,
  'authorizationCode': instance.authorizationCode,
};
