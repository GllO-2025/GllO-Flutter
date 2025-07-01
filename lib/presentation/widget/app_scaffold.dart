import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/component/app_navigation_bar.dart';

/// 공통 Scaffold 모듈
class AppScaffold extends StatelessWidget {
  const AppScaffold({
    this.appBar,
    this.body,
    this.item,
    this.drawer,
    this.floatingActionButton,
    this.backgroundColor,
    super.key,
  });
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final AppNavigationBarType? item;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: body,
      bottomNavigationBar:
          item != null ? AppNavigationBar(currentItem: item!) : null,
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
    );
  }
}
