import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/error_handling/result.dart';
import 'package:gllo_flutter/domain/model/auth/oauth_sign_in_model.dart';
import 'package:gllo_flutter/domain/param/auth/sign_in_with_apple_params.dart';
import 'package:gllo_flutter/domain/param/auth/sign_in_with_google_params.dart';

abstract interface class AuthRepository {
  /// 구글 로그인
  Future<Result<OAuthSignInModel, CustomException>> signInWithGoogle({
    required SignInWithGoogleParams params,
  });

  /// 애플 로그인
  Future<Result<OAuthSignInModel, CustomException>> signInWithApple({
    required SignInWithAppleParams params,
  });
}
