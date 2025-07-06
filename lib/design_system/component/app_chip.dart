import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/shadow/app_shadow.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

/// Chip
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1719-34722&m=dev
class AppChip extends StatelessWidget {
  const AppChip.round({
    super.key,
    this.icon,
    required this.text,
    this.showIcon = false,
    required this.isSelected,
    required this.onTap,
  }) : type = AppChipType.round;
  const AppChip.rectangular({
    super.key,
    this.icon,
    required this.text,
    this.showIcon = false,
    required this.isSelected,
    required this.onTap,
  }) : type = AppChipType.rectangular;
  final SvgGenImage? icon;
  final String text;
  final bool showIcon;
  final bool isSelected;
  final AppChipType type;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final double height = 44;

    final border = Border.all(
      color: isSelected ? AppScaleColor.orange500 : AppScaleColor.gray400,
      width: isSelected ? AppLayout.stroke20 : AppLayout.stroke10,
    );

    final borderRadius = BorderRadius.circular(
      type == AppChipType.round ? AppLayout.radius800 : AppLayout.radius300,
    );

    final backgroundColor =
        isSelected ? AppScaleColor.orange50 : AppScaleColor.white100;

    final textStyle = AppTextStyle.textMm.copyWith(
      color: isSelected ? AppScaleColor.orange500 : AppScaleColor.gray700,
    );

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: AppLayout.marginPaddingM,
        ),
        decoration: BoxDecoration(
          boxShadow: const [AppShadow.shadow12],
          borderRadius: borderRadius,
          border: border,
          color: backgroundColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showIcon && icon != null)
              Padding(
                padding: const EdgeInsets.only(
                  right: AppLayout.marginPaddingXxs,
                ),
                child: icon!.svg(
                  width: 16,
                  height: 16,
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.mode(
                    AppScaleColor.orange500,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            Text(text, style: textStyle),
          ],
        ),
      ),
    );
  }
}

enum AppChipType { round, rectangular }
