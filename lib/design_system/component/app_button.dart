import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

/// 버튼 상태
enum AppButtonState { enabled, pressed, disabled }

/// 버튼 스타일 (컬러 계열)
enum AppButtonStyle { primary, secondary }

/// 버튼 사이즈
enum AppButtonSize { small, medium, large }

class AppButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback? onPressed;
  final AppButtonState state;
  final AppButtonStyle style;
  final AppButtonSize size;
  final bool showText;
  final bool showIcon;

  const AppButton({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
    this.state = AppButtonState.enabled,
    this.style = AppButtonStyle.primary,
    this.size = AppButtonSize.medium,
    this.showText = true,
    this.showIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = _backgroundColor();
    final contentColor = _contentColor();
    final height = _height();
    final textStyle = _textStyle();
    final padding = const EdgeInsets.symmetric(
      horizontal: AppLayout.marginPaddingM,
      vertical: AppLayout.marginPaddingXxs,
    );

    return Opacity(
      opacity: 1,
      child: ElevatedButton(
        onPressed: state == AppButtonState.disabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: contentColor,
          padding: padding,
          fixedSize: Size(200, height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppLayout.radius300),
          ),
          elevation: 0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showIcon && icon != null)
              Icon(icon, size: 16, color: contentColor),
            if (showIcon && showText) const SizedBox(width: 8),
            if (showText) Text(label, style: textStyle),
          ],
        ),
      ),
    );
  }

  Color _backgroundColor() {
    if (style == AppButtonStyle.primary) {
      switch (state) {
        case AppButtonState.enabled:
          return AppScaleColor.orange500;
        case AppButtonState.pressed:
          return AppScaleColor.orange600;
        case AppButtonState.disabled:
          return AppScaleColor.gray300;
      }
    } else {
      switch (state) {
        case AppButtonState.enabled:
          return AppScaleColor.gray100;
        case AppButtonState.pressed:
          return AppScaleColor.gray200;
        case AppButtonState.disabled:
          return AppScaleColor.gray200;
      }
    }
  }

  Color _contentColor() {
    if (style == AppButtonStyle.primary) {
      switch (state) {
        case AppButtonState.enabled:
          return AppScaleColor.gray50;
        case AppButtonState.pressed:
          return AppScaleColor.gray50;
        case AppButtonState.disabled:
          return AppScaleColor.gray500;
      }
    } else {
      switch (state) {
        case AppButtonState.enabled:
          return AppScaleColor.gray600;
        case AppButtonState.pressed:
          return AppScaleColor.gray600;
        case AppButtonState.disabled:
          return AppScaleColor.gray400;
      }
    }
  }

  double _height() {
    switch (size) {
      case AppButtonSize.small:
        return 36;
      case AppButtonSize.medium:
        return 44;
      case AppButtonSize.large:
        return 52;
    }
  }

  TextStyle _textStyle() {
    switch (style) {
      case AppButtonStyle.primary:
        return switch (state) {
          AppButtonState.enabled => AppTextStyle.textSm,
          AppButtonState.pressed => AppTextStyle.textMm,
          AppButtonState.disabled => AppTextStyle.textMm,
        };
      case AppButtonStyle.secondary:
        return switch (state) {
          AppButtonState.enabled => AppTextStyle.textSm,
          AppButtonState.pressed => AppTextStyle.textMm,
          AppButtonState.disabled => AppTextStyle.textMm,
        };
    }
  }
}