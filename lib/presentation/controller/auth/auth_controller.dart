import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gllo_flutter/app/constant/app_constant.dart';
import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/error_handling/result.dart';
import 'package:gllo_flutter/core/status/status.dart';
import 'package:gllo_flutter/core/usecase/base_usecase.dart';
import 'package:gllo_flutter/domain/model/auth/oauth_sign_in_model.dart';
import 'package:gllo_flutter/domain/param/auth/sign_in_with_apple_params.dart';
import 'package:gllo_flutter/domain/param/auth/sign_in_with_google_params.dart';
import 'package:gllo_flutter/domain/usecase/auth/sign_in_with_apple_usecase.dart';
import 'package:gllo_flutter/domain/usecase/auth/sign_in_with_google_usecase.dart';
import 'package:gllo_flutter/presentation/controller/auth/auth_state.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'generated/auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  AuthState build() {
    return AuthState();
  }

  /// Authenticated 여부 초기화
  Future<void> init() async {
    try {
      final accessToken = await _secureStorage.read(
        key: AppConstant.accessToken,
      );
      final refreshToken = await _secureStorage.read(
        key: AppConstant.refreshToken,
      );

      // 토큰이 있으면 로그인 처리
      // TODO: 추후 변경될 필요가 있을 수 있음
      if (accessToken != null && refreshToken != null) {
        state = state.copyWith(isAuthenticated: true);
      } else {
        state = state.copyWith(isAuthenticated: false);
      }
    } catch (e) {
      state = state.copyWith(isAuthenticated: false);
    }
  }

  /// 애플 로그인
  Future<void> signInWithApple() async {
    final credential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
    );

    if (credential.identityToken == null) {
      return;
    }

    state = state.copyWith(signInStatus: Status.loading);

    final result = await Usecase.execute(
      usecase: ref.read(signInWithAppleUsecaseProvider),
      params: SignInWithAppleParams(
        idToken: credential.identityToken!,
        authorizationCode: credential.authorizationCode,
      ),
    );

    await _setOAuthSignInResult(result: result);
  }

  /// 구글 로그인
  Future<void> signInWithGoogle() async {
    final googleUser = await GoogleSignIn().signIn();
    final authentication = await googleUser?.authentication;

    if (authentication?.accessToken == null) {
      return;
    }

    state = state.copyWith(signInStatus: Status.loading);

    final result = await Usecase.execute(
      usecase: ref.read(signInWithGoogleUsecaseProvider),
      params: SignInWithGoogleParams(accessToken: authentication!.accessToken!),
    );

    await _setOAuthSignInResult(result: result);
  }

  /// 로그아웃
  Future<void> signOut() async {
    try {
      // TODO: 서버 API 호출이 필요할 수도 있음
      await _deleteSignInToken();
      state = state.copyWith(isAuthenticated: false);
    } catch (e) {
      state = state.copyWith(isAuthenticated: false);
    }
  }

  /// 로그인 로직 결과 설정
  Future<void> _setOAuthSignInResult({
    required Result<OAuthSignInModel, CustomException> result,
  }) async {
    try {
      await result.onResult(
        onSuccess: (success) async {
          await _saveSignInToken(
            accessToken: success.data.accessToken,
            refreshToken: success.data.refreshToken,
          );
          state = state.copyWith(
            signInStatus: Status.success,
            oauthSignInModel: success.data,
            isAuthenticated: success.data.member.nickname != null,
          );
        },
        onFailure: (failure) {
          state = state.copyWith(
            signInStatus: Status.failure,
            signInException: failure.exception,
            isAuthenticated: false,
          );
        },
      );
    } catch (e) {
      state = state.copyWith(
        signInStatus: Status.failure,
        isAuthenticated: false,
      );
    }
  }

  /// 토큰 저장
  Future<void> _saveSignInToken({
    required String accessToken,
    required String refreshToken,
  }) async {
    await Future.wait([
      _secureStorage.write(key: AppConstant.accessToken, value: accessToken),
      _secureStorage.write(key: AppConstant.refreshToken, value: refreshToken),
    ]);
  }

  /// 토큰 삭제
  Future<void> _deleteSignInToken() async {
    await Future.wait([
      _secureStorage.delete(key: AppConstant.accessToken),
      _secureStorage.delete(key: AppConstant.refreshToken),
    ]);
  }
}
