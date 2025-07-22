import 'package:dio/dio.dart';

import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/error_handling/error_model.dart';
import 'package:gllo_flutter/core/error_handling/error_status.dart';
import 'package:gllo_flutter/core/error_handling/result.dart';

/// 과업을 실행시키고, 과업의 성공 혹은 실패 상태를 반환
/// 과업 실패 시 내부적으로 에러핸들링에 따라 명확한 에러를 포함한 Failure를 반환
/// 과업 성공 시 업데이트 된 데이터를 포함한 Success를 반환
Future<Result<T, CustomException>> apiCall<T>({
  required Future<T> Function() task,
}) async {
  try {
    var value = await task();
    return Success(data: value);
  } on DioException catch (e) {
    if (e.response == null || e.response!.data == null) {
      return const Failure(exception: CustomException.serverError());
    }

    var errorModel = ErrorModel.fromJson(e.response!.data);

    /// 에러코드를 통해 커스텀 에러 구분
    return switch (errorModel.status) {
      ErrorStatus.notFound => Failure(
        exception: CustomException.notFound(model: errorModel),
      ),
      ErrorStatus.maxTryExceeded => Failure(
        exception: CustomException.maxTryExceeded(model: errorModel),
      ),
      ErrorStatus.nicknameReadFail => Failure(
        exception: CustomException.nicknameReadFail(model: errorModel),
      ),
      ErrorStatus.nicknameAlreadyExist => Failure(
        exception: CustomException.nicknameAlreadyExist(model: errorModel),
      ),
      ErrorStatus.invalidToken => Failure(
        exception: CustomException.invalidToken(model: errorModel),
      ),
      ErrorStatus.expiredAccessToken => Failure(
        exception: CustomException.expiredAccessToken(model: errorModel),
      ),
      ErrorStatus.expiredRefreshToken => Failure(
        exception: CustomException.expiredRefreshToken(model: errorModel),
      ),
      ErrorStatus.invalidPassword => Failure(
        exception: CustomException.invalidPassword(model: errorModel),
      ),
      ErrorStatus.duplicatedMember => Failure(
        exception: CustomException.duplicatedMember(model: errorModel),
      ),
      ErrorStatus.googleLoginError => Failure(
        exception: CustomException.googleLoginError(model: errorModel),
      ),
      ErrorStatus.refreshReuse => Failure(
        exception: CustomException.refreshReuse(model: errorModel),
      ),
      _ => const Failure(exception: CustomException.networkError()),
    };
  } catch (e) {
    return const Failure(exception: CustomException.unknownError());
  }
}
