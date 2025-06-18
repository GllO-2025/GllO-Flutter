import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/data/entity/sample/sample_entity.dart';
import 'package:gllo_flutter/data/request_body/sample/add_sample_request_body.dart';
import 'package:gllo_flutter/data/source/remote/sample/sample_api_service.dart';
import 'package:gllo_flutter/data/source/remote/sample/sample_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'generated/sample_remote_data_source_impl.g.dart';

@Riverpod(keepAlive: true)
SampleRemoteDataSource sampleRemoteDataSource(Ref ref) {
  return SampleRemoteDataSourceImpl(
    apiService: ref.read(sampleApiServiceProvider),
  );
}

class SampleRemoteDataSourceImpl implements SampleRemoteDataSource {
  const SampleRemoteDataSourceImpl({required SampleApiService apiService})
    : _apiService = apiService;
  final SampleApiService _apiService;

  @override
  Future<void> addSample({required AddSampleRequestBody body}) async {
    return await _apiService.addSample(body: body);
  }

  @override
  Future<List<SampleEntity>> getSamples() async {
    return await _apiService.getSamples();
  }
}
