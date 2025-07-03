import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/app/toast/toast_manager.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

/// Toast
/// [ToastManager]를 이용하여 제어
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1399-25359&m=dev
class AppToast extends StatelessWidget {
  const AppToast({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.all(AppLayout.marginPaddingXl),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.radius300),
        color: AppScaleColor.black60,
      ),
      child: Row(
        children: [
          Assets.icon.quickAction.checkFill.svg(
            fit: BoxFit.cover,
            width: 24,
            height: 24,
            colorFilter: const ColorFilter.mode(
              AppScaleColor.gray50,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: AppLayout.marginPaddingS),
          Expanded(
            child: Text(
              text,
              style: AppTextStyle.textMm.copyWith(color: AppScaleColor.gray50),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
