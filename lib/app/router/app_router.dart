import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/router/redirect_notifier.dart';
import 'package:gllo_flutter/app/router/routes.dart';
import 'package:gllo_flutter/presentation/controller/onboarding/onboarding_controller.dart';
import 'package:gllo_flutter/presentation/view/collect/collect_view.dart';
import 'package:gllo_flutter/presentation/view/home/home_view.dart';
import 'package:gllo_flutter/presentation/view/map/map_view.dart';
import 'package:gllo_flutter/presentation/view/onboarding/onboarding_view.dart';
import 'package:gllo_flutter/presentation/view/onboarding/splash_view.dart';
import 'package:gllo_flutter/presentation/view/sample/sample_view.dart';
import 'package:gllo_flutter/presentation/view/user/user_view.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/app_router.g.dart';

/// 앱 라우터

@Riverpod(keepAlive: true)
AppRouter appRouter(Ref ref) {
  return AppRouter(
    refreshListenable: ref.read(appRedirectNotifierProvider),
    ref: ref,
  );
}

class AppRouter {
  AppRouter({required Listenable refreshListenable, required this.ref})
    : _refreshListenable = refreshListenable;
  final Listenable _refreshListenable;
  final Ref ref;
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final GoRouter routerConfig = GoRouter(
    initialLocation: Routes.splash.name,
    navigatorKey: rootNavigatorKey,
    refreshListenable: _refreshListenable,
    redirect: (context, state) {
      final isSplashComplete =
          ref.read(onboardingControllerProvider).isSplashComplete;
      final isOnboadingComplete =
          ref.read(onboardingControllerProvider).isOnboadingComplete;

      /// 스플래시가 완료되지 않았을 경우 머무르도록 설정
      if (!isSplashComplete) {
        return state.fullPath == Routes.splash.name ? null : Routes.splash.name;
      }

      /// 온보딩이 완료되지 않았을 경우 머무르도록 설정
      if (!isOnboadingComplete) {
        return state.fullPath == Routes.onboarding.name
            ? null
            : Routes.onboarding.name;
      }

      return null;
    },
    routes: [
      /// 샘플 화면
      GoRoute(
        path: Routes.sample.path,
        name: Routes.sample.name,
        builder: (context, state) => const SampleView(),
      ),

      /// 스플래시
      GoRoute(
        path: Routes.splash.path,
        name: Routes.splash.name,
        builder: (context, state) => const SplashView(),
      ),

      /// 온보딩 프로세스
      GoRoute(
        path: Routes.onboarding.path,
        name: Routes.onboarding.name,
        builder: (context, state) => const OnboardingView(),
      ),

      /// 홈
      GoRoute(
        path: Routes.home.path,
        name: Routes.home.name,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: HomeView()),
      ),

      /// 맵
      GoRoute(
        path: Routes.map.path,
        name: Routes.map.name,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: MapView()),
      ),

      /// 컬렉션
      GoRoute(
        path: Routes.collect.path,
        name: Routes.collect.name,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: CollectView()),
      ),

      /// 유저
      GoRoute(
        path: Routes.user.path,
        name: Routes.user.name,
        pageBuilder:
            (context, state) => const NoTransitionPage(child: UserView()),
      ),
    ],
  );
}
