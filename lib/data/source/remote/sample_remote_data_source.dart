import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/core/network/app_dio.dart';
import 'package:gllo_flutter/data/entity/sample/sample_entity.dart';
import 'package:gllo_flutter/data/request_body/sample/add_sample_request_body.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/sample_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
SampleRemoteDataSource sampleRemoteDataSource(Ref ref) {
  // TODO: 실제 서버 url로 수정 필요
  return SampleRemoteDataSource(ref.read(appDioProvider('http://dev.co.kr')));
}

@RestApi()
abstract class SampleRemoteDataSource {
  factory SampleRemoteDataSource(Dio dio) = _SampleRemoteDataSource;

  /// 샘플 목록 조회
  @GET('/sample')
  Future<List<SampleEntity>> getSamples();

  /// 샘플 추가
  @POST('/sample')
  Future<void> addSample({@Body() required AddSampleRequestBody body});
}
