import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/component/app_action_button.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

/// Alert Dialog
/// [showDialog]를 이용
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1399-27549&m=dev
class AppAlertDialog extends StatelessWidget {
  // TODO: 필드별 required 여부 수정 필요

  const AppAlertDialog({
    required this.title,
    required this.description,
    required this.button,
    required this.negativeButton,
    super.key,
  });
  final String title; // 제목
  final String description; // 내용
  final AppAction button; // 버튼
  final AppAction negativeButton; // 버튼 (부정)

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppLayout.radius600),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 32),
      backgroundColor: AppScaleColor.white100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppLayout.marginPaddingXxl,
              horizontal: AppLayout.marginPaddingS,
            ),
            child: Column(
              children: [
                Text(
                  title,
                  style: AppTextStyle.titleS.copyWith(
                    color: AppScaleColor.gray900,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppLayout.marginPaddingXl),
                Text(
                  description,
                  style: AppTextStyle.textMr.copyWith(
                    color: AppScaleColor.gray900,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          _divider(),
          negativeButton.button(negative: true),
          _divider(),
          button.button(),
        ],
      ),
    );
  }

  Widget _divider() =>
      const Divider(height: 1, thickness: 1, color: AppScaleColor.gray200);
}
