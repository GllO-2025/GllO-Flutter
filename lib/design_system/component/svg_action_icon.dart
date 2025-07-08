import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

class SvgActionIcon extends StatelessWidget {
  const SvgActionIcon({super.key, required this.icon, required this.onTap});

  final SvgGenImage icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(AppLayout.marginPaddingS),
        child: icon.svg(width: 24, height: 24),
      ),
    );
  }
}
