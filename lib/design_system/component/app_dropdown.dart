import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/shadow/app_shadow.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

class AppDropdown<T extends DropdownItem> extends StatelessWidget {
  const AppDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.dropdownWidth,
  });

  final List<T> items;
  final T value;
  final void Function(T) onChanged;
  final double? dropdownWidth;

  @override
  Widget build(BuildContext context) {
    var isOpen = false;
    final layerLink = LayerLink();
    OverlayEntry? dropdownEntry;

    void toggleDropdown(StateSetter refresh) {
      if (dropdownEntry != null) {
        dropdownEntry!.remove();
        dropdownEntry = null;
        isOpen = false;
        refresh(() {});
        return;
      }

      final renderBox = context.findRenderObject() as RenderBox;
      final offset = renderBox.localToGlobal(Offset.zero);
      final size = renderBox.size;

      dropdownEntry = OverlayEntry(
        builder:
            (context) => Stack(
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    dropdownEntry?.remove();
                    dropdownEntry = null;
                    isOpen = false;
                    refresh(() {});
                  },
                  child: Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                Positioned(
                  left: offset.dx,
                  top: offset.dy + size.height + AppLayout.marginPaddingS,
                  width: size.width,
                  child: CompositedTransformFollower(
                    link: layerLink,
                    offset: Offset(0, size.height + AppLayout.marginPaddingS),
                    child: _buildDropdownList(
                      context,
                      onSelect: (item) {
                        onChanged(item);
                        dropdownEntry?.remove();
                        dropdownEntry = null;
                        isOpen = false;
                      },
                    ),
                  ),
                ),
              ],
            ),
      );

      Overlay.of(context).insert(dropdownEntry!);
      isOpen = true;
      refresh(() {});
    }

    return CompositedTransformTarget(
      link: layerLink,
      child: StatefulBuilder(
        builder: (context, refresh) {
          final arrowIcon =
              isOpen ? Assets.icon.arrow.upLine : Assets.icon.arrow.downLine;

          return GestureDetector(
            onTap: () => toggleDropdown(refresh),
            child: _buildTopBar(arrowIcon),
          );
        },
      ),
    );
  }

  Widget _buildTopBar(SvgGenImage arrowIcon) {
    return Container(
      width: (dropdownWidth ?? 200.0) * 0.9,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: AppLayout.marginPaddingS),
      child: Row(
        children: [
          value.buildIcon(),
          const SizedBox(width: AppLayout.marginPaddingXxs),
          Expanded(
            child: DefaultTextStyle(
              style: AppTextStyle.titleL.copyWith(color: AppScaleColor.gray900),
              overflow: TextOverflow.ellipsis,
              child: Align(
                alignment: Alignment.center,
                child: Text(value.label),
              ),
            ),
          ),
          const SizedBox(width: AppLayout.marginPaddingXxs),
          arrowIcon.svg(width: 24, height: 24),
        ],
      ),
    );
  }

  Widget _buildDropdownList(
    BuildContext context, {
    required void Function(T) onSelect,
  }) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: dropdownWidth ?? 200.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.radius300),
          boxShadow: [AppShadow.shadow20],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:
              items.map((item) {
                final isSelected = item == value;
                return InkWell(
                  onTap: () => onSelect(item),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppLayout.marginPaddingM,
                      vertical: AppLayout.marginPaddingS,
                    ),
                    child: Row(
                      children: [
                        item.buildIcon(),
                        const SizedBox(width: AppLayout.marginPaddingXs),
                        DefaultTextStyle(
                          style:
                              isSelected
                                  ? AppTextStyle.textMsb.copyWith(
                                    color: AppScaleColor.gray900,
                                  )
                                  : AppTextStyle.textMr.copyWith(
                                    color: AppScaleColor.gray500,
                                  ),
                          child: Text(item.label),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}

abstract class DropdownItem {
  String get label;

  Widget buildIcon();
}

enum IconType { svg, png }

class UniversityItem implements DropdownItem {
  UniversityItem({
    required this.name,
    required this.icon,
    required this.iconType,
  });

  final String name;
  final dynamic icon;
  final IconType iconType;

  @override
  String get label => name;

  @override
  Widget buildIcon() {
    switch (iconType) {
      case IconType.svg:
        return (icon as SvgGenImage).svg(width: 24.0, height: 24.0);
      case IconType.png:
        return Image.asset(
          (icon as AssetGenImage).path,
          width: 24.0,
          height: 24.0,
        );
    }
  }
}
