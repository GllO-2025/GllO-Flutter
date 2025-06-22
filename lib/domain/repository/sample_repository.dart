import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/error_handling/result.dart';
import 'package:gllo_flutter/core/usecase/no_params.dart';
import 'package:gllo_flutter/domain/model/sample/sample_model.dart';
import 'package:gllo_flutter/domain/param/sample/add_sample_params.dart';

abstract interface class SampleRepository {
  /// 샘플 목록 조회
  Future<Result<List<SampleModel>, CustomException>> getSamples({
    required NoParams params,
  });

  /// 샘플 추가
  Future<Result<void, CustomException>> addSample({
    required AddSampleParams params,
  });
}
