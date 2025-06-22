import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/router/routes.dart';
import 'package:gllo_flutter/presentation/view/sample/sample_view.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/app_router.g.dart';

/// 앱 라우터

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) {
  return AppRouter();
}

class AppRouter {
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final GoRouter routerConfig = GoRouter(
    initialLocation: Routes.sample.name,
    routes: [
      /// 샘플 화면
      GoRoute(
        path: Routes.sample.path,
        name: Routes.sample.name,
        builder: (context, state) => const SampleView(),
      ),
    ],
  );
}
