import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

/// Action Sheet
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1399-27551&m=dev
class AppActionSheet extends StatelessWidget {
  const AppActionSheet({
    required this.actions,
    required this.negativeAction,
    super.key,
  });
  final List<AppActionSheetAction> actions; // 액션 버튼 리스트
  final AppActionSheetAction negativeAction; // 액션 버튼 (부정)

  @override
  Widget build(BuildContext context) {
    // TODO: 플랫폼별 bottom padding 값 조정 필요

    return SafeArea(
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.radius600),
                color: AppScaleColor.white100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _AppActionSheetButton(action: negativeAction, negative: true),
                  ...actions.map(
                    (e) => Column(
                      children: [
                        const Divider(
                          height: 1,
                          thickness: 1,
                          color: AppScaleColor.gray200,
                        ),
                        _AppActionSheetButton(action: e),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Action Sheet Action
class AppActionSheetAction {
  const AppActionSheetAction({required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
}

class _AppActionSheetButton extends StatelessWidget {
  const _AppActionSheetButton({required this.action, this.negative = false});
  final AppActionSheetAction action;
  final bool negative;

  @override
  Widget build(BuildContext context) {
    // TODO: color값 수정 예정
    final textStyle = AppTextStyle.textMr.copyWith(
      color: negative ? AppScaleColor.red : const Color(0xFF333333),
    );

    return GestureDetector(
      onTap: action.onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        height: 64,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(
            action.text,
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

/// App Action Sheet 표시
void showAppActionSheet({
  required BuildContext context,
  required Widget Function(BuildContext context) builder,
}) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: builder,
  );
}
