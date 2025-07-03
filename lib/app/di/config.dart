import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/environment/environment.dart';
import 'package:gllo_flutter/app/toast/toast_manager.dart';
import 'package:gllo_flutter/core/network/app_dio.dart';

/// configuration dependency 등록

final appDioProvider = Provider((ref) {
  return AppDio(baseUrl: Environment.enviromentType.baseUrl).dio;
});

final toastManagerProvider = Provider((ref) {
  return ToastManager();
});
