import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:lottie/lottie.dart';

/// 화면 위에 반투명 배경과 함께 로딩 UI가 표시되도록 하는 위젯
/// 주로 [Scaffold]를 감싸서 사용
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1719-33941&m=dev
class AppOverlayLoader extends StatelessWidget {
  const AppOverlayLoader({
    required this.child,
    required this.isLoading,
    super.key,
  });
  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,

        if (isLoading) ...[
          Positioned.fill(
            child: Container(
              color: AppScaleColor.white20,
              child: const Center(child: AppLoadingSpinner()),
            ),
          ),
        ],
      ],
    );
  }
}

/// 화면 전체에 로딩 UI 표시되도록 하는 위젯
/// 화면의 상태가 Loading일때 사용
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1885-40783&m=dev
class AppFullscreenLoader extends StatelessWidget {
  const AppFullscreenLoader({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppScaleColor.orange500,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLoadingSpinner(),
            Text(
              text,
              textAlign: TextAlign.center,
              style: AppTextStyle.textLsb.copyWith(color: AppScaleColor.gray50),
            ),
          ],
        ),
      ),
    );
  }
}

/// Loading Spinner
class AppLoadingSpinner extends StatelessWidget {
  const AppLoadingSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    return LottieBuilder.asset(
      Assets.animation.loading1.path,
      repeat: true,
      width: 60,
      height: 60,
    );
  }
}
