import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sign_in_with_google_request_body.g.dart';

@JsonSerializable()
class SignInWithGoogleRequestBody {
  const SignInWithGoogleRequestBody({required this.accessToken});
  final String accessToken;

  Map<String, dynamic> toJson() => _$SignInWithGoogleRequestBodyToJson(this);
}
