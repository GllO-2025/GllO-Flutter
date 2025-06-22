import 'package:gllo_flutter/app/environment/env.dart';

/// 환경 종류 정의
/// 환경별 App Config 분리를 위함
enum EnvironmentType {
  dev(type: 'DEV'),
  prod(type: 'PROD');

  const EnvironmentType({required this.type});

  final String type;

  /// App config
  String get baseUrl => switch (this) {
    EnvironmentType.dev => Env.devServerBaseUrl,
    EnvironmentType.prod => Env.prodServerBaseUrl,
  };
}
