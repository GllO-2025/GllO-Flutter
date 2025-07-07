import 'dart:math' as m;

import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';

/// Progress Bar
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=1399-26198&m=dev
class AppProgressBar extends StatelessWidget {
  const AppProgressBar({required this.value, required this.max, super.key})
    : assert(max > 0 && value >= 0 && max >= value);
  final double value;
  final double max;

  @override
  Widget build(BuildContext context) {
    final trackWidth = MediaQuery.of(context).size.width;
    final double indicatorWidth = m.max(m.min(value / max, 1) * trackWidth, 4);

    return Container(
      height: 4,
      width: trackWidth,
      decoration: BoxDecoration(color: AppScaleColor.white30),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          height: 4,
          width: indicatorWidth,
          decoration: BoxDecoration(
            color: AppScaleColor.gray100,
            borderRadius: BorderRadius.only(
              topRight:
                  value / max < 1 ? const Radius.circular(100) : Radius.zero,
              bottomRight:
                  value / max < 1 ? const Radius.circular(100) : Radius.zero,
            ),
          ),
        ),
      ),
    );
  }
}
