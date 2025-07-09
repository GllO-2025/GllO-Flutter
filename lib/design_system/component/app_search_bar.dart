import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

class AppSearchBar extends StatefulWidget {
  const AppSearchBar({
    super.key,
    required this.controller,
    this.hintText = '검색어를 입력하세요',
    this.onChanged,
    this.onBackPressed,
    this.onClearPressed,
  });

  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onBackPressed;
  final VoidCallback? onClearPressed;

  @override
  State<AppSearchBar> createState() => _AppSearchBarState();
}

class _AppSearchBarState extends State<AppSearchBar> {
  late FocusNode _focusNode;

  bool get hasFocus => _focusNode.hasFocus;

  bool get hasText => widget.controller.text.isNotEmpty;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_update);
    widget.controller.addListener(_update);
  }

  void _update() => setState(() {});

  @override
  void dispose() {
    _focusNode.removeListener(_update);
    _focusNode.dispose();
    widget.controller.removeListener(_update);
    super.dispose();
  }

  Widget? get _prefixIcon {
    if (!hasText && !hasFocus) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: GestureDetector(
          child: Assets.icon.system.searchLine.svg(
            width: 24,
            height: 24,
            colorFilter: const ColorFilter.mode(
              AppScaleColor.gray800,
              BlendMode.srcIn,
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        onTap: widget.onBackPressed,
        behavior: HitTestBehavior.opaque,
        child: Assets.icon.arrow.leftLine.svg(
          width: 24,
          height: 24,
          colorFilter: const ColorFilter.mode(
            AppScaleColor.gray800,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  Widget? get _suffixIcon {
    if (!hasText) return null;

    final icon =
    hasFocus ? Assets.icon.system.cancel : Assets.icon.system.closeLine;

    return Padding(
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        onTap: () {
          widget.controller.clear();
          widget.onClearPressed?.call();
        },
        behavior: HitTestBehavior.opaque,
        child: icon.svg(
          width: 24,
          height: 24,
          colorFilter: const ColorFilter.mode(
            AppScaleColor.gray800,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: widget.controller,
        focusNode: _focusNode,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppScaleColor.white100,
          hintText: widget.hintText,
          hintStyle: AppTextStyle.textMm.copyWith(color: AppScaleColor.gray400),
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
          prefixIcon: _prefixIcon,
          suffixIcon: _suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppLayout.radius999),
            borderSide: const BorderSide(color: AppScaleColor.gray400),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppLayout.radius999),
            borderSide: const BorderSide(color: AppScaleColor.gray400),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppLayout.radius999),
            borderSide: const BorderSide(color: AppScaleColor.gray400),
          ),
        ),
      ),
    );
  }
}