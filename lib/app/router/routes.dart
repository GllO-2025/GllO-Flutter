import 'package:gllo_flutter/app/router/route_info.dart';

/// 앱 내 라우팅 경로 모음
abstract class Routes {
  Routes._();

  static final RouteInfo sample = const RouteInfo(
    name: '/sample',
    path: '/sample',
  );
}
