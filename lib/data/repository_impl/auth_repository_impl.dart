import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/core/api_call/api_call.dart';
import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/error_handling/result.dart';
import 'package:gllo_flutter/data/mapper/auth_mapper.dart';
import 'package:gllo_flutter/data/request_body/auth/sign_in_with_apple_request_body.dart';
import 'package:gllo_flutter/data/request_body/auth/sign_in_with_google_request_body.dart';
import 'package:gllo_flutter/data/source/remote/auth/auth_remote_data_source.dart';
import 'package:gllo_flutter/data/source/remote/auth/auth_remote_data_source_impl.dart';
import 'package:gllo_flutter/domain/model/auth/oauth_sign_in_model.dart';
import 'package:gllo_flutter/domain/param/auth/sign_in_with_apple_params.dart';
import 'package:gllo_flutter/domain/param/auth/sign_in_with_google_params.dart';
import 'package:gllo_flutter/domain/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/auth_repository_impl.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    remoteDataSource: ref.read(authRemoteDataSourceProvider),
  );
}

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({required AuthRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final AuthRemoteDataSource _remoteDataSource;

  @override
  Future<Result<OAuthSignInModel, CustomException>> signInWithGoogle({
    required SignInWithGoogleParams params,
  }) async {
    return await apiCall(
      task: () async {
        final result = await _remoteDataSource.signInWithGoogle(
          body: SignInWithGoogleRequestBody(accessToken: params.accessToken),
        );
        return result.toModel();
      },
    );
  }

  @override
  Future<Result<OAuthSignInModel, CustomException>> signInWithApple({
    required SignInWithAppleParams params,
  }) async {
    return await apiCall(
      task: () async {
        final result = await _remoteDataSource.signInWithApple(
          body: SignInWithAppleRequestBody(
            idToken: params.idToken,
            authorizationCode: params.authorizationCode,
          ),
        );
        return result.toModel();
      },
    );
  }
}
