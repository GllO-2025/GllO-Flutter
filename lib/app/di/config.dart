import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/environment/environment.dart';
import 'package:gllo_flutter/core/network/app_dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

/// configuration dependency 등록

final appDioProvider = Provider((ref) {
  return AppDio(baseUrl: Environment.enviromentType.baseUrl).dio
    ..interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
      ),
    ]);
});
