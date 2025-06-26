import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/app/environment/environment.dart';
import 'package:gllo_flutter/app/environment/environment_type.dart';
import 'package:gllo_flutter/core/util/svg_util.dart';
import 'package:gllo_flutter/presentation/app.dart';

/// 앱의 진입점
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// 앱 실행환경 설정 및 초기화
  await Environment.init(EnvironmentType.dev).setUp();

  /// 특정 SVG Asset Preload
  await SvgUtil.preloadSVGs(
    assetPaths: [
      Assets.icon.etc.home3Fill.path,
      Assets.icon.etc.mapFill.path,
      Assets.icon.etc.box2Fill.path,
      Assets.icon.etc.user2Fill.path,
    ],
  );

  runApp(const ProviderScope(child: MyApp()));
}
