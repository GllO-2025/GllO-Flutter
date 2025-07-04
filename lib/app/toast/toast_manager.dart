import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gllo_flutter/app/router/app_router.dart';

/// fluttertoast를 이용하여 Toast 관리
/// 앱의 Snack Bar와 Toast를 표시할때 사용
class ToastManager {
  factory ToastManager() => instance;
  ToastManager._();

  static ToastManager instance = ToastManager._();

  final _fToast = FToast();

  bool _isInitialized = false;

  /// fluttertoast 초기화
  void _init() {
    if (!_isInitialized) {
      _fToast.init(AppRouter.rootNavigatorKey.currentContext!);
      _isInitialized = true;
    }
  }

  /// fluttertoast 표시
  void show({required Widget toastWidget}) {
    if (!_isInitialized) {
      _init();
    }

    _fToast.removeCustomToast();

    _fToast.showToast(
      child: toastWidget,
      toastDuration: const Duration(seconds: 3),
      positionedToastBuilder: (context, child, gravity) {
        return Positioned(
          top: MediaQuery.of(context).padding.top,
          right: 20,
          left: 20,
          child: child,
        );
      },
      isDismissible: true,
    );
  }

  /// fluttertoast 삭제
  void dismiss() {
    if (!_isInitialized) {
      _init();
    }
    _fToast.removeCustomToast();
  }
}
