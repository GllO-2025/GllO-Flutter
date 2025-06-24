import 'package:flutter/material.dart';

abstract class AppTextStyle {
  /// Pretendard
  static const pretendard = 'Pretendard';

  static const titleL  = TextStyle(
    fontFamily: pretendard,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: -0.72,
  );

  static const titleM  = TextStyle(
    fontFamily: pretendard,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: -0.60,
  );

  static const titleS  = TextStyle(
    fontFamily: pretendard,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.2,
    letterSpacing: -0.54,
  );

  static const textLsb = TextStyle(
    fontFamily: pretendard,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: -0.32,
  );

  static const textLr  = TextStyle(
    fontFamily: pretendard,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: -0.32,
  );

  static const textMsb = TextStyle(
    fontFamily: pretendard,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.4,
    letterSpacing: -0.28,
  );

  static const textMm  = TextStyle(
    fontFamily: pretendard,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: -0.28,
  );

  static const textMr  = TextStyle(
    fontFamily: pretendard,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: -0.28,
  );

  static const textSm  = TextStyle(
    fontFamily: pretendard,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: -0.24,
  );

  static const textSr  = TextStyle(
    fontFamily: pretendard,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
    letterSpacing: -0.24,
  );

  /// Caveat
  static const caveat = 'Caveat';

  static const textBadge = TextStyle(
    fontFamily: caveat,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.6,
    letterSpacing: -0.42,
  );
}
