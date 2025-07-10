import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/component/app_action_button.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

/// Action Sheet
/// [showAppActionSheet]를 이용
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1399-27551&m=dev
class AppActionSheet extends StatelessWidget {
  const AppActionSheet({
    required this.actions,
    required this.negativeActions,
    super.key,
  }) : assert(negativeActions.length > 0 && negativeActions.length <= 2);
  final List<AppAction> actions; // 액션 버튼 리스트
  final List<AppAction> negativeActions; // 액션 버튼 (부정)

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.radius600),
                  color: AppScaleColor.white100,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ...negativeActions.mapIndexed(
                      (index, e) => Column(
                        children: [
                          if (index != 0) _divider(),
                          e.button(negative: true),
                        ],
                      ),
                    ),

                    ...actions.map(
                      (e) => Column(children: [_divider(), e.button()]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() =>
      const Divider(height: 1, thickness: 1, color: AppScaleColor.gray200);
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
