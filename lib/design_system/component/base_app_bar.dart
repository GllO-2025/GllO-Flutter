import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar({
    super.key,
    this.leading,
    this.center,
    this.trailing,
    this.height = 48.0,
    this.backgroundColor = Colors.transparent,
    this.padding = const EdgeInsets.symmetric(
      horizontal: AppLayout.marginPaddingS,
    ),
  });

  final Widget? leading;
  final String? center;
  final List<Widget>? trailing;
  final double height;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        height: height,
        padding: padding,
        color: backgroundColor,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = constraints.maxWidth;

            return Stack(
              children: [
                // leading
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [if (leading != null) leading!],
                  ),
                ),

                // center
                Align(
                  alignment: Alignment.center,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: maxWidth * 0.6),
                    child: Center(
                      child: Text(
                        center ?? '',
                        style: AppTextStyle.titleS.copyWith(
                          color: AppScaleColor.gray700,
                        ),
                      ),
                    ),
                  ),
                ),

                // trailing
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: trailing ?? [],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
