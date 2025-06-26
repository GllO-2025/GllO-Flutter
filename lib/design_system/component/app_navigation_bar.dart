import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/app/router/routes.dart';
import 'package:gllo_flutter/design_system/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';
import 'package:go_router/go_router.dart';

/// Navigation Bar
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1321-23181&m=dev

enum AppNavigationBarItem {
  home(label: 'Home'), // 홈
  map(label: 'Map'), // 맵(지도)
  collect(label: 'Collect'), // 컬렉션
  user(label: 'User'); // 유저

  const AppNavigationBarItem({required this.label});

  final String label;
}

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({required this.currentItem, super.key});

  final AppNavigationBarItem currentItem; // 현재 선택된 아이템

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.radius999),
        border: Border.all(
          width: AppLayout.stroke10,
          color: AppScaleColor.gray300,
        ),
        color: AppScaleColor.white100,
      ),
      padding: const EdgeInsets.symmetric(vertical: AppLayout.marginPaddingM),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _NavBarItem(
            selectedIcon: Assets.icon.etc.home3Fill,
            unselectedIcon: Assets.icon.etc.home3Line,
            label: AppNavigationBarItem.home.label,
            onTap: () {
              context.goNamed(Routes.home.name);
            },
            selected: currentItem == AppNavigationBarItem.home,
          ),
          const SizedBox(width: 8),
          _NavBarItem(
            selectedIcon: Assets.icon.etc.mapFill,
            unselectedIcon: Assets.icon.etc.mapLine,
            label: AppNavigationBarItem.map.label,
            onTap: () {
              context.goNamed(Routes.map.name);
            },
            selected: currentItem == AppNavigationBarItem.map,
          ),
          const SizedBox(width: 8),
          _CenterActionButton(
            onTap: () {
              //TODO: 추후 Action 추가 필요
            },
          ),
          const SizedBox(width: 8),
          _NavBarItem(
            selectedIcon: Assets.icon.etc.box2Fill,
            unselectedIcon: Assets.icon.etc.box2Line,
            label: AppNavigationBarItem.collect.label,
            onTap: () {
              context.goNamed(Routes.collect.name);
            },
            selected: currentItem == AppNavigationBarItem.collect,
          ),
          const SizedBox(width: 8),
          _NavBarItem(
            selectedIcon: Assets.icon.etc.user2Fill,
            unselectedIcon: Assets.icon.etc.user2Line,
            label: AppNavigationBarItem.user.label,
            onTap: () {
              context.goNamed(Routes.user.name);
            },
            selected: currentItem == AppNavigationBarItem.user,
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}

/// Navigation Bar Item Widget
class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.label,
    required this.onTap,
    required this.selected,
  });
  final SvgGenImage selectedIcon;
  final SvgGenImage unselectedIcon;
  final String label;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        width: 54,
        height: 54,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              selected
                  ? selectedIcon.svg(
                    colorFilter: const ColorFilter.mode(
                      AppScaleColor.gray800,
                      BlendMode.srcIn,
                    ),
                  )
                  : unselectedIcon.svg(
                    colorFilter: const ColorFilter.mode(
                      AppScaleColor.gray500,
                      BlendMode.srcIn,
                    ),
                  ),
              Text(
                label,
                style: AppTextStyle.textSr.copyWith(
                  color:
                      selected ? AppScaleColor.gray800 : AppScaleColor.gray500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Center Floating Action Button
class _CenterActionButton extends StatelessWidget {
  const _CenterActionButton({required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 54,
        height: 54,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppScaleColor.orange500,
        ),
        child: Center(
          child: Assets.icon.media.camera2Fill.svg(
            colorFilter: ColorFilter.mode(
              AppScaleColor.white100,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
