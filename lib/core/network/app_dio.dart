import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/app_dio.g.dart';

/// Http client
@Riverpod(keepAlive: true)
Dio appDio(Ref ref, String baseUrl) {
  return AppDio(baseUrl: baseUrl).dio
    ..interceptors.addAll([
      if (kDebugMode) PrettyDioLogger(requestHeader: true, requestBody: true),
    ]);
}

class AppDio {
  AppDio({required this.baseUrl});

  final String baseUrl;

  late final Dio dio =
      Dio()
        ..options = BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          contentType: Headers.jsonContentType,
        );
}
