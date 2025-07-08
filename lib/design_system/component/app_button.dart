import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

enum AppButtonStyle { primary, secondary }

enum AppButtonSize { small, medium, large }

class AppButton extends StatelessWidget {
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

  final String label;
  final SvgGenImage? icon;
  final VoidCallback? onPressed;
  final AppButtonStyle style;
  final AppButtonSize size;
  final bool showText;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    final height =
        {
          AppButtonSize.small: 36.0,
          AppButtonSize.medium: 44.0,
          AppButtonSize.large: 52.0,
        }[size]!;

    final textStyle = {
      AppButtonSize.small: AppTextStyle.textSm,
      AppButtonSize.medium: AppTextStyle.textMm,
      AppButtonSize.large: AppTextStyle.textMm,
    }[size]!;

    const padding = EdgeInsets.symmetric(
      horizontal: AppLayout.marginPaddingM,
      vertical: AppLayout.marginPaddingXxs,
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith(
          _resolveBackgroundColor,
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          _resolveForegroundColor,
        ),
        fixedSize: WidgetStateProperty.all(Size(200, height)),
        padding: WidgetStateProperty.all(padding),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppLayout.radius300),
          ),
        ),
        elevation: WidgetStateProperty.all(0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showIcon && icon != null) _buildIcon(),
          if (showIcon && showText) const SizedBox(width: AppLayout.marginPaddingXxs),
          if (showText) Text(label, style: textStyle),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    final states = <WidgetState>{};
    if (onPressed == null) {
      states.add(WidgetState.disabled);
    }

    return icon!.svg(
      width: _getIconSize(),
      height: _getIconSize(),
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(
        _resolveForegroundColor(states),
        BlendMode.srcIn,
      ),
    );
  }

  double _getIconSize() {
    switch (size) {
      case AppButtonSize.small:
        return 16.0;
      case AppButtonSize.medium:
        return 20.0;
      case AppButtonSize.large:
        return 24.0;
    }
  }

  Color _resolveBackgroundColor(Set<WidgetState> states) {
    final isDisabled = states.contains(WidgetState.disabled);
    final isPressed = states.contains(WidgetState.pressed);

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

  Color _resolveForegroundColor(Set<WidgetState> states) {
    final isDisabled = states.contains(WidgetState.disabled);

    if (style == AppButtonStyle.primary) {
      return isDisabled ? AppScaleColor.gray500 : AppScaleColor.gray50;
    } else {
      return isDisabled ? AppScaleColor.gray400 : AppScaleColor.gray600;
    }
  }
}