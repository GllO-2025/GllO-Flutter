import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

/// Tag
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1719-34717&m=dev
class AppTag extends StatelessWidget {
  const AppTag.line({super.key, required this.text}) : type = AppTagType.line;
  const AppTag.bold({super.key, required this.text}) : type = AppTagType.bold;

  final String text;
  final AppTagType type;

  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(
      horizontal: AppLayout.marginPaddingXs,
      vertical: AppLayout.marginPaddingXxs,
    );

    final textStyle = AppTextStyle.textSm.copyWith(
      color:
          type == AppTagType.line
              ? AppScaleColor.gray50
              : AppScaleColor.orange400,
    );

    final border = Border.all(
      color:
          type == AppTagType.line
              ? AppScaleColor.gray500
              : AppScaleColor.orange100,
    );

    final backgroundColor =
        type == AppTagType.line ? Colors.transparent : AppScaleColor.orange100;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppLayout.radius200),
        border: border,
        color: backgroundColor,
      ),
      padding: padding,
      child: Text(text, style: textStyle),
    );
  }
}

enum AppTagType { line, bold }
