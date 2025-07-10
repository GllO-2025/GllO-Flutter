import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/component/app_navigation_bar.dart';
import 'package:gllo_flutter/presentation/widget/app_scaffold.dart';

/// 컬렉션
class CollectView extends StatelessWidget {
  const CollectView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      item: AppNavigationBarItem.collect,
      body: const Center(child: Text('Collect View')),
    );
  }
}
