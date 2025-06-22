import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/error_handling/result.dart';
import 'package:gllo_flutter/core/usecase/base_usecase.dart';
import 'package:gllo_flutter/core/usecase/no_params.dart';
import 'package:gllo_flutter/data/repository_impl/sample_repository_impl.dart';
import 'package:gllo_flutter/domain/model/sample/sample_model.dart';
import 'package:gllo_flutter/domain/repository/sample_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/get_samples_usecase.g.dart';

@Riverpod(keepAlive: true)
GetSamplesUsecase getSamplesUsecase(Ref ref) {
  return GetSamplesUsecase(repository: ref.read(sampleRepositoryProvider));
}

class GetSamplesUsecase implements Usecase<List<SampleModel>, NoParams> {
  const GetSamplesUsecase({required this.repository});
  final SampleRepository repository;

  @override
  Future<Result<List<SampleModel>, CustomException>> call({
    required NoParams params,
  }) async {
    return await repository.getSamples(params: params);
  }
}
