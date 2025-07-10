import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';

/// Common Action Button
/// Action Sheet 및 Dialog 내 Action Button으로 활용
class AppAction {
  const AppAction({required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  Widget button({bool negative = false}) {
    final textStyle = AppTextStyle.textMr.copyWith(
      color: negative ? AppScaleColor.red : AppScaleColor.gray900,
    );

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        height: 64,
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text(text, style: textStyle, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
