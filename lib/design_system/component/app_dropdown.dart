import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/shadow/app_shadow.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

class AppDropdown<T> extends StatelessWidget {
  const AppDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
    required this.itemBuilder,
    this.icon,
    this.dropdownWidth,
  });

  final List<T> items;
  final T value;
  final void Function(T) onChanged;
  final Widget Function(T) itemBuilder;
  final SvgGenImage? icon;
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
        builder: (context) => Positioned(
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
      );

      Overlay.of(context).insert(dropdownEntry!);
      isOpen = true;
      refresh(() {});
    }

    return CompositedTransformTarget(
      link: layerLink,
      child: StatefulBuilder(
        builder: (context, refresh) {
          final arrowIcon = isOpen
              ? Assets.icon.arrow.upLine
              : Assets.icon.arrow.downLine;

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
      width: (dropdownWidth ?? 200) * 0.9,
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: AppLayout.marginPaddingS),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon!.svg(width: 24, height: 24),
            const SizedBox(width: AppLayout.marginPaddingXxs),
          ],

          Expanded(
            child: DefaultTextStyle(
              style: AppTextStyle.titleL.copyWith(color: AppScaleColor.gray900),
              overflow: TextOverflow.ellipsis,
              child: Align(
                alignment: Alignment.center,
                child: itemBuilder(value),
              ),
            ),
          ),

          const SizedBox(width: AppLayout.marginPaddingXxs),

          arrowIcon.svg(width: 24, height: 24),
        ],
      ),
    );
  }

  Widget _buildDropdownList(BuildContext context, {required void Function(T) onSelect}) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: dropdownWidth ?? 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.radius300),
          boxShadow: [
            AppShadow.shadow20,
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: items.map((item) {
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
                    if (icon != null) ...[
                      icon!.svg(width: 24, height: 24),
                      const SizedBox(width: AppLayout.marginPaddingXs),
                    ],
                    DefaultTextStyle(
                      style: isSelected
                          ? AppTextStyle.textMsb.copyWith(color: AppScaleColor.gray900)
                          : AppTextStyle.textMr.copyWith(color: AppScaleColor.gray500),
                      child: itemBuilder(item),
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