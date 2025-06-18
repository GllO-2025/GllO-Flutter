import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/di/config.dart';
import 'package:gllo_flutter/data/entity/sample/sample_entity.dart';
import 'package:gllo_flutter/data/request_body/sample/add_sample_request_body.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/sample_api_service.g.dart';

@Riverpod(keepAlive: true)
SampleApiService sampleApiService(Ref ref) {
  return SampleApiService(ref.read(appDioProvider));
}

/// 네트워크 통신 (Rest Api)
@RestApi()
abstract class SampleApiService {
  factory SampleApiService(Dio dio) = _SampleApiService;

  /// 샘플 목록 조회
  @GET('/sample')
  Future<List<SampleEntity>> getSamples();

  /// 샘플 추가
  @POST('/sample')
  Future<void> addSample({@Body() required AddSampleRequestBody body});
}
