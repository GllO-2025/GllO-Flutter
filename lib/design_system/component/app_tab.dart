import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';

/// Tab
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1399-26247&m=dev
class AppTabBar extends StatelessWidget {
  const AppTabBar({required this.tabs, required this.controller, super.key});
  final List<Tab> tabs;
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: TabBar(
        controller: controller,
        tabs: tabs,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorWeight: 2,
        indicatorColor: AppScaleColor.gray700,
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
