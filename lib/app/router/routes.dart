import 'package:gllo_flutter/app/router/route_info.dart';

/// 앱 내 라우팅 경로 모음
abstract class Routes {
  Routes._();

  static final RouteInfo sample = const RouteInfo(
    name: '/sample',
    path: '/sample',
  );

  /// 홈
  static final RouteInfo home = const RouteInfo(name: '/home', path: '/home');

  /// 맵
  static final RouteInfo map = const RouteInfo(name: '/map', path: '/map');

  /// 컬렉션
  static final RouteInfo collect = const RouteInfo(
    name: '/collect',
    path: '/collect',
  );

  /// 유저
  static final RouteInfo user = const RouteInfo(name: '/user', path: '/user');
}
