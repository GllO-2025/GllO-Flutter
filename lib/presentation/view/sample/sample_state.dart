import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/status/status.dart';
import 'package:gllo_flutter/domain/model/sample/sample_model.dart';

part 'generated/sample_state.freezed.dart';

/// 상태 관리를 위한 state class (상태 모음)
@freezed
abstract class SampleState with _$SampleState {
  factory SampleState({
    @Default([]) List<SampleModel> samples,
    @Default(Status.loading) Status getSamplesStatus,
    @Default(CustomException.unknownError())
    CustomException getSamplesException,
  }) = _SampleState;
}
