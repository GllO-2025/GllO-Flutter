import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/router/app_router.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/presentation/controller/onboarding/onboarding_controller.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();

    /// 앱 실행 시 필수 데이터 초기화
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(onboardingControllerProvider.notifier).checkOnboadingComplete();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'gllo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppScaleColor.orange500,
        scaffoldBackgroundColor: AppScaleColor.white100,
      ),
      routerConfig: ref.read(appRouterProvider).routerConfig,
      builder:
          (context, child) => Overlay(
            initialEntries: [
              if (child != null) ...[OverlayEntry(builder: (context) => child)],
            ],
          ),
    );
  }
}
