import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gllo_flutter/core/error_handling/error_model.dart';

part 'generated/custom_exception.freezed.dart';

/// 커스텀 에러
/// 에러를 명시적으로 다루기 위함
@freezed
class CustomException with _$CustomException implements Exception {
  const factory CustomException.notFound({required ErrorModel model}) =
      NotFound;
  const factory CustomException.maxTryExceeded({required ErrorModel model}) =
      MaxTryExceeded;
  const factory CustomException.nicknameReadFail({required ErrorModel model}) =
      NicknameReadFail;
  const factory CustomException.nicknameAlreadyExist({
    required ErrorModel model,
  }) = NicknameAlreadyExist;
  const factory CustomException.invalidToken({required ErrorModel model}) =
      InvalidToken;
  const factory CustomException.expiredAccessToken({
    required ErrorModel model,
  }) = ExpiredAccessToken;
  const factory CustomException.expiredRefreshToken({
    required ErrorModel model,
  }) = ExpiredRefreshToken;
  const factory CustomException.invalidPassword({required ErrorModel model}) =
      InvalidPassword;
  const factory CustomException.duplicatedMember({required ErrorModel model}) =
      DuplicatedMember;
  const factory CustomException.googleLoginError({required ErrorModel model}) =
      GoogleLoginIntervalServerError;
  const factory CustomException.refreshReuse({required ErrorModel model}) =
      RefreshReuseException;

  // 임의로 정의한 에러 코드들
  /// {
  ///   "status": 600,
  ///   "code": "ZZ000",
  ///   "message": "서버로부터 응답이 없습니다.",
  /// }
  const factory CustomException.serverError() = ServerError;

  /// {
  ///   "status": 601,
  ///   "code": "ZZ001",
  ///   "message": "통신 에러입니다.",
  /// }
  const factory CustomException.networkError() = NetworkError;

  /// {
  ///   "status": 602,
  ///   "code": "ZZ002",
  ///   "message": "알 수 없는 에러입니다.",
  /// }
  const factory CustomException.unknownError() = UnknownError;
}
