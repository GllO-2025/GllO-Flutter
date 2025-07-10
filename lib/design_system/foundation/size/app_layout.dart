part 'app_size.dart';

/// App Layout (Margin & Padding, Stroke, Radius, etc)
/// https://www.figma.com/design/i2Rdv9uaE5bQ1TTasEKoNN/GllO-%EC%9E%91%EC%97%85-%EB%AC%B8%EC%84%9C-v1.0?node-id=485-18134&m=dev
abstract final class AppLayout {
  /// Margin & Padding
  static const double marginPaddingXxs = _AppSize.spacingSize1;
  static const double marginPaddingXs = _AppSize.spacingSize2;
  static const double marginPaddingS = _AppSize.spacingSize3;
  static const double marginPaddingM = _AppSize.spacingSize4;
  static const double marginPaddingL = _AppSize.spacingSize5;
  static const double marginPaddingXl = _AppSize.spacingSize6;
  static const double marginPaddingXxl = _AppSize.spacingSize8;

  /// Stroke
  static const double stroke10 = 1.0;
  static const double stroke15 = 1.5;
  static const double stroke20 = 2.0;

  /// Radius
  static const double radius100 = _AppSize.spacingSize1;
  static const double radius200 = _AppSize.spacingSize2;
  static const double radius300 = _AppSize.spacingSize3;
  static const double radius400 = _AppSize.spacingSize6;
  static const double radius600 = _AppSize.spacingSize6;
  static const double radius800 = _AppSize.spacingSize8;
  static const double radius999 = _AppSize.spacingSize999;
}
