import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/app/localization/locale_keys.g.dart';
import 'package:gllo_flutter/app/router/routes.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/presentation/controller/onboarding/onboarding_controller.dart';
import 'package:go_router/go_router.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 2), () {
      ref
          .read(onboardingControllerProvider.notifier)
          .updateSplashComplete(isComplete: true);

      context.goNamed(Routes.home.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppScaleColor.orange500,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.png.appLogo.image(),
            const SizedBox(height: 32),
            Text(
              context.tr(LocaleKeys.splash),
              style: AppTextStyle.titleM.copyWith(
                color: AppScaleColor.white100,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
