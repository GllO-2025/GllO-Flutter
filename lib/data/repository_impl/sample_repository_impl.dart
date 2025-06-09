import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/core/api_call/api_call.dart';
import 'package:gllo_flutter/core/error_handling/custom_exception.dart';
import 'package:gllo_flutter/core/error_handling/result.dart';
import 'package:gllo_flutter/core/usecase/no_params.dart';
import 'package:gllo_flutter/data/mapper/sample_mapper.dart';
import 'package:gllo_flutter/data/request_body/sample/add_sample_request_body.dart';
import 'package:gllo_flutter/data/source/remote/sample_remote_data_source.dart';
import 'package:gllo_flutter/domain/model/sample/sample_model.dart';
import 'package:gllo_flutter/domain/param/sample/add_sample_params.dart';
import 'package:gllo_flutter/domain/repository/sample_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/sample_repository_impl.g.dart';

@Riverpod(keepAlive: true)
SampleRepository sampleRepository(Ref ref) {
  return SampleRepositoryImpl(
    remoteDataSource: ref.read(sampleRemoteDataSourceProvider),
  );
}

class SampleRepositoryImpl implements SampleRepository {
  const SampleRepositoryImpl({required SampleRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final SampleRemoteDataSource _remoteDataSource;

  @override
  Future<Result<List<SampleModel>, CustomException>> getSamples({
    required NoParams params,
  }) async {
    return await apiCall(
      task: () async {
        final result = await _remoteDataSource.getSamples();
        return result.map((e) => e.toModel()).toList();
      },
    );
  }

  @override
  Future<Result<void, CustomException>> addSample({
    required AddSampleParams params,
  }) async {
    return await apiCall(
      task: () async {
        return _remoteDataSource.addSample(
          body: AddSampleRequestBody(
            title: params.title,
            content: params.content,
          ),
        );
      },
    );
  }
}
