import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/error_handling/result.dart';
import 'package:gllo_flutter/core/usecase/base_usecase.dart';
import 'package:gllo_flutter/data/repository_impl/auth_repository_impl.dart';
import 'package:gllo_flutter/domain/model/auth/oauth_sign_in_model.dart';
import 'package:gllo_flutter/domain/param/auth/sign_in_with_apple_params.dart';
import 'package:gllo_flutter/domain/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/sign_in_with_apple_usecase.g.dart';

@Riverpod(keepAlive: true)
SignInWithAppleUsecase signInWithAppleUsecase(Ref ref) {
  return SignInWithAppleUsecase(repository: ref.read(authRepositoryProvider));
}

class SignInWithAppleUsecase
    implements Usecase<OAuthSignInModel, SignInWithAppleParams> {
  const SignInWithAppleUsecase({required AuthRepository repository})
    : _repository = repository;
  final AuthRepository _repository;

  @override
  Future<Result<OAuthSignInModel, CustomException>> call({
    required SignInWithAppleParams params,
  }) async {
    return await _repository.signInWithApple(params: params);
  }
}
