import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/app/environment/environment.dart';
import 'package:gllo_flutter/app/environment/environment_type.dart';
import 'package:gllo_flutter/app/localization/localization_enum.dart';
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
      Assets.icon.etc.home3Line.path,
      Assets.icon.etc.home3Fill.path,
      Assets.icon.etc.mapFill.path,
      Assets.icon.etc.box2Fill.path,
      Assets.icon.etc.user2Fill.path,
    ],
  );

  runApp(
    ProviderScope(
      child: EasyLocalization(
        // 지원 언어팩 설정
        supportedLocales: Localization.values.map((e) => e.locale).toList(),
        // 기본적으로 지원되는 언어
        fallbackLocale: Localization.en.locale,
        path: 'asset/translation',
        child: const MyApp(),
      ),
    ),
  );
}
