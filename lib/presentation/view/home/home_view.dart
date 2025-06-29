import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/component/app_navigation_bar.dart';

/// 홈
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavigationBar(
        currentItem: AppNavigationBarItem.home,
      ),
      body: const Center(child: Text('Home View')),
    );
  }
}
