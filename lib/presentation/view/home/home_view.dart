import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/component/app_navigation_bar.dart';
import 'package:gllo_flutter/presentation/widget/app_scaffold.dart';

/// 홈
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      item: AppNavigationBarItem.home,
      body: const Center(child: Text('Home View')),
    );
  }
}
