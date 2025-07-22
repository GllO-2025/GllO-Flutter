class OAuthSignInModel {
  const OAuthSignInModel({
    required this.accessToken,
    required this.refreshToken,
    required this.member,
  });

  final String accessToken;
  final String refreshToken;
  final OAuthSignInMemberModel member;
}

class OAuthSignInMemberModel {
  const OAuthSignInMemberModel({required this.id, required this.nickname});

  final int id;
  final String? nickname;
}
