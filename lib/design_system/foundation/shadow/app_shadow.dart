import 'package:flutter/material.dart';

/// Shadow
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=480-3198&m=dev
abstract final class AppShadow {
  const AppShadow._();

  static const shadow12 = BoxShadow(
    color: Color(0x1E000000),
    blurRadius: 10,
    offset: Offset(2, 2),
    spreadRadius: 0,
  );

  static const shadow20 = BoxShadow(
    color: Color(0x33000000),
    blurRadius: 10,
    offset: Offset(2, 2),
    spreadRadius: 0,
  );

  static const shadow35 = BoxShadow(
    color: Color(0x59000000),
    blurRadius: 10,
    offset: Offset(2, 2),
    spreadRadius: 0,
  );

  static const navShadow12 = BoxShadow(
    color: Color(0x1E000000),
    blurRadius: 10,
    offset: Offset(0, -2),
    spreadRadius: 0,
  );
}
