part of '../onboarding_view.dart';

class _OnboardingStep extends StatelessWidget {
  const _OnboardingStep({
    required this.image,
    required this.titleKey,
    required this.descKey,
  });
  final AssetGenImage image;
  final String titleKey;
  final String descKey;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Assets.png.onboardingStep1.image(
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 34),
          Text(
            context.tr(titleKey),
            style: AppTextStyle.titleM.copyWith(
              // TODO: 컬러 수정 예정
              color: const Color(0xFF333333),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            context.tr(descKey),
            style: AppTextStyle.textLr.copyWith(color: AppScaleColor.gray600),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
