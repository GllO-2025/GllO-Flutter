import 'package:gllo_flutter/core/status/status.dart';
import 'package:gllo_flutter/core/usecase/base_usecase.dart';
import 'package:gllo_flutter/core/usecase/no_params.dart';
import 'package:gllo_flutter/domain/usecase/sample/get_samples_usecase.dart';
import 'package:gllo_flutter/presentation/view/sample/sample_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/sample_controller.g.dart';

/// 상태관리를 위한 controller
@riverpod
class SampleController extends _$SampleController {
  @override
  SampleState build() {
    return SampleState();
  }

  /// 샘플 목록 조회
  Future<void> getSamples() async {
    state = state.copyWith(getSamplesStatus: Status.loading);

    final result = await Usecase.execute(
      usecase: ref.read(getSamplesUsecaseProvider),
      params: NoParams(),
    );

    result.onResult(
      onSuccess: (onSuccess) {
        state = state.copyWith(
          getSamplesStatus: Status.success,
          samples: onSuccess.data,
        );
      },
      onFailure: (onFailure) {
        state = state.copyWith(
          getSamplesStatus: Status.failure,
          getSamplesException: onFailure.exception,
        );
      },
    );
  }
}
