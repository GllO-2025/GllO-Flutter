import 'package:flutter/material.dart';

class AppGradientOverlay extends StatelessWidget {
  const AppGradientOverlay({
    super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomCenter,
    this.colors,
  });

  final double? height;
  final double? width;
  final BorderRadius? borderRadius;

  final Alignment begin;
  final Alignment end;

  final List<Color>? colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: colors ?? const [Colors.white, Colors.black],
        ),
      ),
    );
  }
}
