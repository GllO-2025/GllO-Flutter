import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

/// Segment Controll
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1399-26258&m=dev
class AppSegmentControl extends StatelessWidget {
  const AppSegmentControl({
    required this.tabs,
    required this.controller,
    super.key,
  });
  final List<Tab> tabs;
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.radius300),
        color: AppScaleColor.gray300,
      ),
      padding: const EdgeInsets.all(AppLayout.marginPaddingXxs),
      child: TabBar(
        controller: controller,
        tabs: tabs,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.radius200),
          color: AppScaleColor.white100,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: Colors.transparent,
        dividerColor: Colors.transparent,
        labelStyle: AppTextStyle.textLsb,
        labelColor: AppScaleColor.gray700,
        unselectedLabelStyle: AppTextStyle.textLsb,
        unselectedLabelColor: AppScaleColor.gray500,
        splashFactory: NoSplash.splashFactory,

        /// 탭바 클릭시 나오는 splash effect 컬러
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      ),
    );
  }
}
