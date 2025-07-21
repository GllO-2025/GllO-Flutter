import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/di/config.dart';
import 'package:gllo_flutter/data/entity/auth/oauth_sign_in_entity.dart';
import 'package:gllo_flutter/data/request_body/auth/sign_in_with_apple_request_body.dart';
import 'package:gllo_flutter/data/request_body/auth/sign_in_with_google_request_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/auth_api_service.g.dart';

@Riverpod(keepAlive: true)
AuthApiService authApiService(Ref ref) {
  return AuthApiService(ref.read(appDioProvider));
}

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  /// 구글 로그인
  @POST('/api/auth/login/google')
  Future<OAuthSignInEntity> signInWithGoogle({
    @Body() required SignInWithGoogleRequestBody body,
  });

  /// 애플 로그인
  @POST('/api/auth/login/apple')
  Future<OAuthSignInEntity> signInWithApple({
    @Body() required SignInWithAppleRequestBody body,
  });
}
