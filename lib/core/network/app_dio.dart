import 'package:dio/dio.dart';

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
