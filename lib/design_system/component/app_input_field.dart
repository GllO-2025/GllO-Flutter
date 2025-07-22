import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/component/app_input_status.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

class AppInputField extends StatefulWidget {
  const AppInputField({
    super.key,
    required this.controller,
    required this.placeholder,
    this.isPassword = false,
    this.isEnabled = true,
    this.label,
    this.helpMessage,
    this.errorText,
    this.suffixIcon,
    this.onChanged,
  });

  final String? label;
  final TextEditingController controller;
  final String placeholder;
  final bool isPassword;
  final bool isEnabled;
  final String? helpMessage;
  final String? errorText;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  final ValueNotifier<bool> isObscured = ValueNotifier<bool>(true);
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => setState(() {})); // 포커스 변경 감지
  }

  @override
  void dispose() {
    _focusNode.dispose();
    isObscured.dispose();
    super.dispose();
  }

  AppInputStatus getStatus() {
    if (!widget.isEnabled) return AppInputStatus.disabled;
    if (widget.errorText != null) return AppInputStatus.error;
    if (widget.controller.text.isNotEmpty) return AppInputStatus.success;
    return AppInputStatus.defaultStatus;
  }

  Color _getBorderColor(AppInputStatus status) {
    switch (status) {
      case AppInputStatus.disabled:
        return AppScaleColor.gray500;
      case AppInputStatus.error:
        return AppScaleColor.red;
      case AppInputStatus.success:
        return AppScaleColor.gray500;
      default:
        return AppScaleColor.gray50;
    }
  }

  @override
  Widget build(BuildContext context) {
    final status = getStatus();
    final isFocused = _focusNode.hasFocus;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppLayout.radius300),
      borderSide: BorderSide(
        color: _getBorderColor(status),
        width: AppLayout.stroke15,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppLayout.marginPaddingXs,
            ),
            child: Text(
              widget.label ?? '',
              style: AppTextStyle.textMm.copyWith(
                color:
                    status == AppInputStatus.error
                        ? AppScaleColor.red
                        : AppScaleColor.gray800,
              ),
            ),
          ),
        const SizedBox(height: AppLayout.marginPaddingXxs),
        SizedBox(
          height: 48,
          child: ValueListenableBuilder<bool>(
            valueListenable: isObscured,
            builder: (context, obscure, _) {
              return TextField(
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                controller: widget.controller,
                focusNode: _focusNode,
                enabled: widget.isEnabled,
                obscureText: widget.isPassword && obscure,
                obscuringCharacter: '●',
                onChanged: (value) {
                  widget.onChanged?.call(value);
                  setState(() {}); // 아이콘 갱신
                },
                style: AppTextStyle.textMm.copyWith(
                  color:
                      status == AppInputStatus.error
                          ? AppScaleColor.red
                          : AppScaleColor.gray800,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor:
                      status == AppInputStatus.disabled
                          ? Colors.grey.shade100
                          : AppScaleColor.gray50,
                  hintText: widget.placeholder,
                  hintStyle: AppTextStyle.textMm.copyWith(
                    color: AppScaleColor.gray400,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppLayout.marginPaddingM,
                    vertical: 0,
                  ),
                  border: border,
                  enabledBorder: border,
                  focusedBorder: border,
                  disabledBorder: border,
                  suffixIcon: _buildSuffixIcon(status, isFocused),
                ),
              );
            },
          ),
        ),
        if (widget.errorText != null || widget.helpMessage != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppLayout.marginPaddingXs,
              AppLayout.marginPaddingXxs,
              AppLayout.marginPaddingXs,
              0,
            ),
            child: Text(
              widget.errorText ?? widget.helpMessage!,
              style: AppTextStyle.textSr.copyWith(
                color:
                    status == AppInputStatus.error
                        ? AppScaleColor.red
                        : AppScaleColor.gray500,
              ),
            ),
          ),
      ],
    );
  }

  Widget? _buildSuffixIcon(AppInputStatus status, bool isFocused) {
    final hasText = widget.controller.text.isNotEmpty;

    if (widget.isPassword) {
      return GestureDetector(
        onTap: () => isObscured.value = !isObscured.value,
        child: Padding(
          padding: const EdgeInsets.all(AppLayout.marginPaddingS),
          child:
              isObscured.value
                  ? Assets.icon.system.eyeCloseLine.svg(
                    width: 24,
                    height: 24,
                    colorFilter: const ColorFilter.mode(
                      AppScaleColor.gray500,
                      BlendMode.srcIn,
                    ),
                  )
                  : Assets.icon.system.eye2Line.svg(
                    width: 24,
                    height: 24,
                    colorFilter: const ColorFilter.mode(
                      AppScaleColor.gray500,
                      BlendMode.srcIn,
                    ),
                  ),
        ),
      );
    }

    if (status == AppInputStatus.success) {
      return Padding(
        padding: const EdgeInsets.all(AppLayout.marginPaddingS),
        child: Assets.icon.system.checkCircleFill.svg(
          width: 24,
          height: 24,
          colorFilter: const ColorFilter.mode(
            AppScaleColor.gray700,
            BlendMode.srcIn,
          ),
        ),
      );
    }

    if (hasText && isFocused) {
      return GestureDetector(
        onTap: () {
          widget.controller.clear();
          widget.onChanged?.call('');
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.all(AppLayout.marginPaddingS),
          child: Assets.icon.system.cancel.svg(
            width: 24,
            height: 24,
            colorFilter: const ColorFilter.mode(
              AppScaleColor.gray500,
              BlendMode.srcIn,
            ),
          ),
        ),
      );
    }

    return widget.suffixIcon;
  }
}
