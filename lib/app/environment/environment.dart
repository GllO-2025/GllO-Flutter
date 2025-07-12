import 'package:easy_localization/easy_localization.dart';
import 'package:gllo_flutter/app/environment/environment_type.dart';

/// 앱의 실핼 환경 설정 및 초기화
class Environment {
  const Environment._internal();

  /// 실행환경 설정
  factory Environment.init(EnvironmentType type) {
    if (_isInitialized) {
      return _instance;
    }

    _type = type;
    _instance = const Environment._internal();
    _isInitialized = true;
    return _instance;
  }

  static late final Environment _instance;
  static late EnvironmentType _type;
  static bool _isInitialized = false;

  /// 환경에 따라 앱의 초기 설정을 진행
  Future<void> setUp() async {
    if (!_isInitialized) {
      return;
    }

    // EasyLocalization 초기화
    await EasyLocalization.ensureInitialized();
  }

  static Environment get instance => _instance;
  static EnvironmentType get enviromentType => _type;
}
