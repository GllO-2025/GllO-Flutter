import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/component/app_navigation_bar.dart';
import 'package:gllo_flutter/presentation/widget/app_scaffold.dart';

/// 맵(지도)
class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      item: AppNavigationBarItem.map,
      body: const Center(child: Text('Map View')),
    );
  }
}
