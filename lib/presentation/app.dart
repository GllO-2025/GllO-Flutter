import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/router/app_router.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
