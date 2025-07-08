import 'package:flutter_svg/flutter_svg.dart';

abstract final class SvgUtil {
  /// SVG Image Preload
  static Future<void> preloadSVGs({required List<String> assetPaths}) async {
    for (final path in assetPaths) {
      final loader = SvgAssetLoader(path);
      await svg.cache.putIfAbsent(
        loader.cacheKey(null),
        () => loader.loadBytes(null),
      );
    }
  }
}
