import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// Page Indicator (Dot)
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1399-27485&m=dev
class AppPageIndicator extends StatelessWidget {
  const AppPageIndicator({
    required this.controller,
    required this.count,
    super.key,
  });
  final PageController controller;
  final int count; // 페이지 개수

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,

      /// Slide Effect 적용
      effect: const SlideEffect(
        offset: 0,
        dotWidth: 8,
        dotHeight: 8,
        spacing: 8,
        strokeWidth: 0,
        radius: AppLayout.radius100,
        activeDotColor: AppScaleColor.orange500,
        dotColor: AppScaleColor.gray400,
      ),
    );
  }
}
