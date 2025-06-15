import 'package:gllo_flutter/app/environment/env.dart';

/// 환경 종류 정의
/// 환경별 설정 분리
enum EnvironmentType {
  dev(type: 'DEV'),
  prod(type: 'PROD');

  const EnvironmentType({required this.type});

  final String type;

  String get baseUrl => switch (this) {
    EnvironmentType.dev => Env.devServerBaseUrl,
    EnvironmentType.prod => Env.prodServerBaseUrl,
  };
}
