import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sign_in_with_apple_request_body.g.dart';

@JsonSerializable()
class SignInWithAppleRequestBody {
  const SignInWithAppleRequestBody({
    required this.idToken,
    required this.authorizationCode,
  });
  final String idToken;
  final String authorizationCode;

  Map<String, dynamic> toJson() => _$SignInWithAppleRequestBodyToJson(this);
}
