import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/environment/environment.dart';
import 'package:gllo_flutter/app/environment/environment_type.dart';
import 'package:gllo_flutter/presentation/app.dart';

/// 앱의 진입점
void main() async {
  /// 앱 실행환경 설정 및 초기화
  await Environment.init(EnvironmentType.dev).setUp();

  runApp(const ProviderScope(child: MyApp()));
}
