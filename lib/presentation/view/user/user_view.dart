import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/component/app_navigation_bar.dart';

/// 유저
class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: AppNavigationBar(
        currentItem: AppNavigationBarItem.user,
      ),
      body: Center(child: Text('User View')),
    );
  }
}
