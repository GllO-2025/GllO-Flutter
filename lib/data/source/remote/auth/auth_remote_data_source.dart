import 'package:gllo_flutter/data/entity/auth/oauth_sign_in_entity.dart';
import 'package:gllo_flutter/data/request_body/auth/sign_in_with_apple_request_body.dart';
import 'package:gllo_flutter/data/request_body/auth/sign_in_with_google_request_body.dart';

abstract interface class AuthRemoteDataSource {
  /// 구글 로그인
  Future<OAuthSignInEntity> signInWithGoogle({
    required SignInWithGoogleRequestBody body,
  });

  /// 애플 로그인
  Future<OAuthSignInEntity> signInWithApple({
    required SignInWithAppleRequestBody body,
  });
}
