import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/component/app_button.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';
import 'package:go_router/go_router.dart';

/// Bottom Sheet (기본형)
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1792-31668&m=dev
class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({
    required this.child,
    this.header,
    this.height,
    this.button,
    super.key,
  });
  final AppBottomSheetHeader? header; // 바텀 시트 헤더.
  final Widget child; // 바텀 시트 컨텐츠 영역.
  final double? height; // 바텀 시트 전체 높이. 전체 화면을 덮는 바텀시트를 생성하려면 double.infinity 지정
  final AppBottomSheetButton? button; // 바텀 시트 버튼.

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: height ?? size.height * 400 / 844,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppLayout.radius400),
          topRight: Radius.circular(AppLayout.radius400),
        ),
        color: AppScaleColor.white100,
      ),
      child: Column(
        children: [
          _buildHandleBar(),
          if (header != null) _buildHeader(context),
          Expanded(child: child),
          if (button != null) _buildButton(),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }

  Widget _buildHandleBar() {
    return SizedBox(
      height: 18,
      child: Center(
        child: Container(
          width: 36,
          height: 5,
          decoration: ShapeDecoration(
            color: const Color(0x7F3D3D3D),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.50),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.fromLTRB(
        AppLayout.marginPaddingL,
        AppLayout.marginPaddingXxs,
        AppLayout.marginPaddingS,
        AppLayout.marginPaddingL - 1,
      ),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppScaleColor.gray300)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              header!.text,
              style: AppTextStyle.titleS.copyWith(color: AppScaleColor.gray800),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Assets.icon.system.closeLine.svg(
              width: 24,
              height: 24,
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(
                AppScaleColor.gray800,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: SizedBox(
        width: double.infinity,
        child: AppButton(
          size: AppButtonSize.large,
          style: AppButtonStyle.primary,
          label: button!.text,
          onPressed: button!.onTap,
        ),
      ),
    );
  }
}

/// App Bottom Sheet 내 Button 자료구조
class AppBottomSheetButton {
  const AppBottomSheetButton({required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;
}

/// App Bottom Sheet 내 Header 자료구조
class AppBottomSheetHeader {
  const AppBottomSheetHeader({required this.text});
  final String text;
}

/// App Bottom Sheet 표시
void showAppBottomSheet({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
}) {
  showModalBottomSheet(
    isScrollControlled: true,
    useSafeArea: true,
    context: context,
    builder: builder,
  );
}
