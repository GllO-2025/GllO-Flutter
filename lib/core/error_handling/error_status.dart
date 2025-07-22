/// 서버 에러 코드 정리
abstract final class ErrorStatus {
  /// 맴버
  static const String notFound = 'NOT_FOUND';
  static const String maxTryExceeded = 'MAX_TRY_EXCEEDED';
  static const String nicknameReadFail = 'NICK_NAME_READ_FAIL';
  static const String nicknameAlreadyExist = 'NICK_NAME_ALREADY_EXIST';

  /// 권한
  static const String invalidToken = 'INVALID_TOKEN';
  static const String expiredAccessToken = 'EXPIRED_ACCESS_TOKEN';
  static const String expiredRefreshToken = 'EXPIRED_REFRESH_TOKEN';
  static const String invalidPassword = 'INVALID_PASSWORD';
  static const String duplicatedMember = 'DUPLICATED_MEMBER';
  static const String googleLoginError = 'GOOGLE_LOGIN_INTERNAL_SERVER_ERROR';
  static const String refreshReuse = 'REFRESH_REUSE_EXCEPTION';
}
