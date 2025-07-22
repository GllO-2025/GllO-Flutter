import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/status/status.dart';
import 'package:gllo_flutter/domain/model/auth/oauth_sign_in_model.dart';

part 'generated/auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  factory AuthState({
    @Default(false) bool isAuthenticated,
    @Default(Status.none) Status signInStatus,
    @Default(
      OAuthSignInModel(
        accessToken: '',
        refreshToken: '',
        member: OAuthSignInMemberModel(id: -1, nickname: ''),
      ),
    )
    OAuthSignInModel oauthSignInModel,
    @Default(CustomException.unknownError()) CustomException signInException,
  }) = _AuthState;
}
