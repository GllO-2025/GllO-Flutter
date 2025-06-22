import 'package:envied/envied.dart';

part 'generated/env.g.dart';

/// 앱의 환경 변수 관리
@Envied(path: '.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'DEV_SERVER_BASE_URL')
  static final String devServerBaseUrl = _Env.devServerBaseUrl;

  @EnviedField(varName: 'PROD_SERVER_BASE_URL')
  static final String prodServerBaseUrl = _Env.prodServerBaseUrl;
}
