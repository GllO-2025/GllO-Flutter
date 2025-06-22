import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/error_handling/result.dart';

/// T: 모델, P: 매개변수
abstract interface class Usecase<T, P> {
  Future<Result<T, CustomException>> call({required P params});

  static Future<Result<T, CustomException>> execute<T, P>({
    required Usecase<T, P> usecase,
    required P params,
  }) async {
    return await usecase(params: params);
  }
}
