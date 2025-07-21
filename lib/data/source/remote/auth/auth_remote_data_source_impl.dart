import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/data/entity/auth/oauth_sign_in_entity.dart';
import 'package:gllo_flutter/data/request_body/auth/sign_in_with_apple_request_body.dart';
import 'package:gllo_flutter/data/request_body/auth/sign_in_with_google_request_body.dart';
import 'package:gllo_flutter/data/source/remote/auth/auth_api_service.dart';
import 'package:gllo_flutter/data/source/remote/auth/auth_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

@Riverpod(keepAlive: true)
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSourceImpl(apiService: ref.read(authApiServiceProvider));
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl({required AuthApiService apiService})
    : _apiService = apiService;
  final AuthApiService _apiService;

  @override
  Future<OAuthSignInEntity> signInWithApple({
    required SignInWithAppleRequestBody body,
  }) async {
    return await _apiService.signInWithApple(body: body);
  }

  @override
  Future<OAuthSignInEntity> signInWithGoogle({
    required SignInWithGoogleRequestBody body,
  }) async {
    return await _apiService.signInWithGoogle(body: body);
  }
}
