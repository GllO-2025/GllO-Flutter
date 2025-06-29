import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/component/app_navigation_bar.dart';
import 'package:gllo_flutter/presentation/widget/app_scaffold.dart';

/// 유저
class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      item: AppNavigationBarItem.user,
      body: const Center(child: Text('User View')),
    );
  }
}
