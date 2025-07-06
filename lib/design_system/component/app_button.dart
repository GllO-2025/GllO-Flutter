import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

enum AppButtonStyle { primary, secondary }

enum AppButtonSize { small, medium, large }

class AppButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onPressed;
  final AppButtonStyle style;
  final AppButtonSize size;
  final bool showText;
  final bool showIcon;

  const AppButton({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
    this.style = AppButtonStyle.primary,
    this.size = AppButtonSize.medium,
    this.showText = true,
    this.showIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    final double height =
        {
          AppButtonSize.small: 36.0,
          AppButtonSize.medium: 44.0,
          AppButtonSize.large: 52.0,
        }[size]!;

    final TextStyle textStyle = AppTextStyle.textSm;

    const EdgeInsets padding = EdgeInsets.symmetric(
      horizontal: AppLayout.marginPaddingM,
      vertical: AppLayout.marginPaddingXxs,
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          _resolveBackgroundColor,
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
          _resolveForegroundColor,
        ),
        fixedSize: MaterialStateProperty.all(Size(200, height)),
        padding: MaterialStateProperty.all(padding),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppLayout.radius300),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showIcon && icon != null) Icon(icon, size: 16),
          if (showIcon && showText) const SizedBox(width: 8),
          if (showText) Text(label, style: textStyle),
        ],
      ),
    );
  }

  Color _resolveBackgroundColor(Set<MaterialState> states) {
    final bool isDisabled = states.contains(MaterialState.disabled);
    final bool isPressed = states.contains(MaterialState.pressed);

    if (style == AppButtonStyle.primary) {
      if (isDisabled) return AppScaleColor.gray300;
      if (isPressed) return AppScaleColor.orange600;
      return AppScaleColor.orange500;
    } else {
      if (isDisabled) return AppScaleColor.gray200;
      if (isPressed) return AppScaleColor.gray200;
      return AppScaleColor.gray100;
    }
  }

  Color _resolveForegroundColor(Set<MaterialState> states) {
    final bool isDisabled = states.contains(MaterialState.disabled);

    if (style == AppButtonStyle.primary) {
      return isDisabled ? AppScaleColor.gray500 : AppScaleColor.gray50;
    } else {
      return isDisabled ? AppScaleColor.gray400 : AppScaleColor.gray600;
    }
  }
}
