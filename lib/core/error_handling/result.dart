import 'package:gllo_flutter/core/error_handling/custom_exception.dart';

/// Result 패턴
sealed class Result<T, E extends CustomException> {
  const Result();

  R onResult<R>({
    required R Function(Success<T, E> success) onSuccess,
    required R Function(Failure<T, E> failure) onFailure,
  }) {
    if (this is Success) {
      return onSuccess(this as Success<T, E>);
    }

    return onFailure(this as Failure<T, E>);
  }
}

class Success<T, E extends CustomException> extends Result<T, E> {
  const Success({required this.data});
  final T data;
}

class Failure<T, E extends CustomException> extends Result<T, E> {
  const Failure({required this.exception});
  final E exception;
}
