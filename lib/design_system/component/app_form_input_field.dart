import 'package:flutter/material.dart';
import 'package:gllo_flutter/app/asset/assets.gen.dart';
import 'package:gllo_flutter/design_system/component/app_input_status.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

class AppFormInputField extends FormField<String> {
  AppFormInputField({
    super.key,
    super.validator,
    required this.controller,
    required this.placeholder,
    this.label,
    this.isPassword = false,
    this.isEnabled = true,
    this.helpMessage,
    this.suffixIcon,
    ValueChanged<String>? onChanged,
  }) : super(
         initialValue: controller.text,
         enabled: isEnabled,
         builder: (field) {
           return _AppInputFieldInternal(
             label: label,
             controller: controller,
             placeholder: placeholder,
             isPassword: isPassword,
             isEnabled: isEnabled,
             errorText: field.errorText,
             helpMessage: helpMessage,
             suffixIcon: suffixIcon,
             onChanged: (value) {
               field.didChange(value);
               onChanged?.call(value);
             },
           );
         },
       );

  final String? label;
  final TextEditingController controller;
  final String placeholder;
  final bool isPassword;
  final bool isEnabled;
  final String? helpMessage;
  final Widget? suffixIcon;
}

class _AppInputFieldInternal extends StatefulWidget {
  const _AppInputFieldInternal({
    required this.controller,
    required this.placeholder,
    required this.isPassword,
    required this.isEnabled,
    required this.onChanged,
    required this.errorText,
    this.label,
    this.helpMessage,
    this.suffixIcon,
  });

  final String? label;
  final TextEditingController controller;
  final String placeholder;
  final bool isPassword;
  final bool isEnabled;
  final String? helpMessage;
  final String? errorText;
  final ValueChanged<String> onChanged;
  final Widget? suffixIcon;

  @override
  State<_AppInputFieldInternal> createState() =>
      _AppFormInputFieldInternalState();
}

class _AppFormInputFieldInternalState extends State<_AppInputFieldInternal> {
  bool isObscured = true;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  AppInputStatus getStatus() {
    if (!widget.isEnabled) return AppInputStatus.disabled;
    if (widget.errorText != null) return AppInputStatus.error;
    if (widget.controller.text.isNotEmpty) return AppInputStatus.success;
    return AppInputStatus.defaultStatus;
  }

  OutlineInputBorder border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppLayout.radius300),
    borderSide: BorderSide(color: color, width: AppLayout.stroke15),
  );

  Color getBorderColor(AppInputStatus status) {
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
    final isError = status == AppInputStatus.error;
    final isDisabled = status == AppInputStatus.disabled;
    final hasText = widget.controller.text.isNotEmpty;
    final isFocused = _focusNode.hasFocus;

    final suffixIcon =
        widget.isPassword
            ? _buildEyeIcon()
            : (hasText && isFocused ? _buildClearIcon() : widget.suffixIcon);

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
                color: isError ? AppScaleColor.red : AppScaleColor.gray800,
              ),
            ),
          ),
        const SizedBox(height: AppLayout.marginPaddingXxs),
        SizedBox(
          height: 48,
          child: TextField(
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            controller: widget.controller,
            focusNode: _focusNode,
            enabled: widget.isEnabled,
            obscureText: widget.isPassword && isObscured,
            obscuringCharacter: '●',
            onChanged: (value) {
              widget.onChanged(value);
              setState(() {});
            },
            style: AppTextStyle.textMm.copyWith(
              color: isError ? AppScaleColor.red : AppScaleColor.gray800,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor:
                  isDisabled ? Colors.grey.shade100 : AppScaleColor.gray50,
              hintText: widget.placeholder,
              hintStyle: AppTextStyle.textMm.copyWith(
                color: AppScaleColor.gray400,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppLayout.marginPaddingM,
                vertical: 0,
              ),
              border: border(getBorderColor(status)),
              enabledBorder: border(getBorderColor(status)),
              focusedBorder: border(getBorderColor(status)),
              disabledBorder: border(getBorderColor(status)),
              errorBorder: border(AppScaleColor.red),
              suffixIcon: suffixIcon,
            ),
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
                color: isError ? AppScaleColor.red : AppScaleColor.gray500,
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildEyeIcon() {
    return GestureDetector(
      onTap: () => setState(() => isObscured = !isObscured),
      child: Padding(
        padding: const EdgeInsets.all(AppLayout.marginPaddingS),
        child:
            isObscured
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

  Widget _buildClearIcon() {
    return GestureDetector(
      onTap: () {
        widget.controller.clear();
        widget.onChanged('');
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
}
