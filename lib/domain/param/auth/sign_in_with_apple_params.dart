class SignInWithAppleParams {
  const SignInWithAppleParams({
    required this.idToken,
    required this.authorizationCode,
  });
  final String idToken;
  final String authorizationCode;
}
