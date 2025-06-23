import 'package:flutter/material.dart';

/// Color Style
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=480-3198&m=dev
abstract final class AppScaleColor {
  AppScaleColor._();

  /// white
  static final Color white100 = Colors.white;
  static final Color white90 = Colors.white.withAlpha((255 * 0.9).toInt());
  static final Color white80 = Colors.white.withAlpha((255 * 0.8).toInt());
  static final Color white70 = Colors.white.withAlpha((255 * 0.7).toInt());
  static final Color white60 = Colors.white.withAlpha((255 * 0.6).toInt());
  static final Color white50 = Colors.white.withAlpha((255 * 0.5).toInt());
  static final Color white40 = Colors.white.withAlpha((255 * 0.4).toInt());
  static final Color white30 = Colors.white.withAlpha((255 * 0.3).toInt());
  static final Color white20 = Colors.white.withAlpha((255 * 0.2).toInt());
  static final Color white10 = Colors.white.withAlpha((255 * 0.1).toInt());

  /// Black
  static final Color black100 = Colors.black;
  static final Color black90 = Colors.black.withAlpha((255 * 0.9).toInt());
  static final Color black80 = Colors.black.withAlpha((255 * 0.8).toInt());
  static final Color black70 = Colors.black.withAlpha((255 * 0.7).toInt());
  static final Color black60 = Colors.black.withAlpha((255 * 0.6).toInt());
  static final Color black50 = Colors.black.withAlpha((255 * 0.5).toInt());
  static final Color black40 = Colors.black.withAlpha((255 * 0.4).toInt());
  static final Color black30 = Colors.black.withAlpha((255 * 0.3).toInt());
  static final Color black20 = Colors.black.withAlpha((255 * 0.2).toInt());
  static final Color black10 = Colors.black.withAlpha((255 * 0.1).toInt());

  /// orange
  static const Color orange50 = Color(0xFFFFF2E8);
  static const Color orange100 = Color(0xFFFFD8BF);
  static const Color orange200 = Color(0xFFFFBB96);
  static const Color orange300 = Color(0xFFFF9C6E);
  static const Color orange400 = Color(0xFFFF7944);
  static const Color orange500 = Color(0xFFFA541C);
  static const Color orange600 = Color(0xFFD53A0F);
  static const Color orange700 = Color(0xFFAD2101);
  static const Color orange800 = Color(0xFF871301);
  static const Color orange900 = Color(0xFF610A01);

  /// gray
  static const Color gray50 = Color(0xFFFAFAFA);
  static const Color gray100 = Color(0xFFF5F5F5);
  static const Color gray200 = Color(0xFFF0F0F0);
  static const Color gray300 = Color(0xFFD9D9D9);
  static const Color gray400 = Color(0xFFBFBFBF);
  static const Color gray500 = Color(0xFF8C8C8C);
  static const Color gray600 = Color(0xFF595959);
  static const Color gray700 = Color(0xFF434343);
  static const Color gray800 = Color(0xFF262626);
  static const Color gray900 = Color(0xFF141414);

  /// red
  static const Color red = Color(0xFFFF3333);
}
