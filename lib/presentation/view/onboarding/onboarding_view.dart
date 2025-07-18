import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/app/localization/locale_keys.g.dart';
import 'package:gllo_flutter/app/router/routes.dart';
import 'package:gllo_flutter/design_system/component/app_button.dart';
import 'package:gllo_flutter/design_system/component/app_page_indicator.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:go_router/go_router.dart';

part 'local_widget/onboarding_step.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late final PageController _pageController;
  int _currentPage = 0;
  final List<_OnboardingStep> _steps = [
    _OnboardingStep(
      image: Assets.png.onboardingStep1,
      titleKey: LocaleKeys.onboarding_title1,
      descKey: LocaleKeys.onboarding_desc1,
    ),
    _OnboardingStep(
      image: Assets.png.onboardingStep2,
      titleKey: LocaleKeys.onboarding_title2,
      descKey: LocaleKeys.onboarding_desc2,
    ),
    _OnboardingStep(
      image: Assets.png.onboardingStep3,
      titleKey: LocaleKeys.onboarding_title3,
      descKey: LocaleKeys.onboarding_desc3,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            SizedBox(
              height: size.height * 700 / 844,
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: _steps,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppPageIndicator(
                    controller: _pageController,
                    count: _steps.length,
                  ),
                  const SizedBox(height: 22),
                  SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      label: LocaleKeys.onboarding_nextButton.tr(),
                      onPressed: () {
                        if (_currentPage >= _steps.length - 1) {
                          context.goNamed(Routes.home.name);
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
