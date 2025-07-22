import 'package:flutter/material.dart';
import 'package:gllo_flutter/design_system/foundation/color/app_color.dart';
import 'package:gllo_flutter/design_system/foundation/font/app_text_style.dart';
import 'package:gllo_flutter/design_system/foundation/size/app_layout.dart';

class AppTextAreaField extends FormField<String> {
  AppTextAreaField({
    super.key,
    super.validator,
    required this.label,
    required this.controller,
    required this.placeholder,
    this.isEnabled = true,
    this.maxLength,
    this.maxLines = 4,
    this.helpMessage,
    this.onChanged,
    this.suffix,
  }) : super(
         initialValue: controller.text,
         enabled: isEnabled,
         builder: (field) {
           return _AppTextAreaInternal(
             label: label,
             controller: controller,
             placeholder: placeholder,
             isEnabled: isEnabled,
             errorText: field.errorText,
             helpMessage: helpMessage,
             maxLength: maxLength,
             maxLines: maxLines,
             onChanged: (value) {
               field.didChange(value);
               onChanged?.call(value);
             },
             suffix: suffix,
           );
         },
       );

  final String label;
  final TextEditingController controller;
  final String placeholder;
  final bool isEnabled;
  final int? maxLength;
  final int maxLines;
  final String? helpMessage;
  final ValueChanged<String>? onChanged;
  final Widget? suffix;
}

class _AppTextAreaInternal extends StatefulWidget {
  const _AppTextAreaInternal({
    required this.label,
    required this.controller,
    required this.placeholder,
    required this.isEnabled,
    required this.errorText,
    required this.onChanged,
    required this.maxLength,
    required this.maxLines,
    this.helpMessage,
    this.suffix,
  });

  final String label;
  final TextEditingController controller;
  final String placeholder;
  final bool isEnabled;
  final String? errorText;
  final String? helpMessage;
  final int? maxLength;
  final int maxLines;
  final ValueChanged<String> onChanged;
  final Widget? suffix;

  @override
  State<_AppTextAreaInternal> createState() => _AppTextAreaInternalState();
}

class _AppTextAreaInternalState extends State<_AppTextAreaInternal> {
  OutlineInputBorder border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppLayout.radius300),
    borderSide: BorderSide(color: color, width: AppLayout.stroke15),
  );

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final isError = widget.errorText != null;
    final hasNoInput = widget.controller.text.isEmpty;

    final borderColor =
        isError
            ? AppScaleColor.red
            : !widget.isEnabled
            ? AppScaleColor.gray200
            : hasNoInput
            ? AppScaleColor.gray50
            : AppScaleColor.gray500;

    final currentLength = widget.controller.text.length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppLayout.marginPaddingXs,
          ),
          child: Text(
            widget.label,
            style: AppTextStyle.textMm.copyWith(
              color: isError ? AppScaleColor.red : AppScaleColor.gray800,
            ),
          ),
        ),
        const SizedBox(height: AppLayout.marginPaddingXxs),
        Stack(
          children: [
            TextField(
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              controller: widget.controller,
              enabled: widget.isEnabled,
              maxLength: widget.maxLength,
              maxLines: widget.maxLines,
              style: AppTextStyle.textMm.copyWith(color: AppScaleColor.gray800),
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                filled: true,
                fillColor:
                    widget.isEnabled
                        ? AppScaleColor.gray50
                        : Colors.grey.shade100,
                hintText: widget.placeholder,
                hintStyle: AppTextStyle.textMm.copyWith(
                  color: AppScaleColor.gray400,
                ),
                counterText: '',
                // 기본 카운터 제거
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppLayout.marginPaddingM,
                  vertical: AppLayout.marginPaddingM,
                ),
                border: border(borderColor),
                enabledBorder: border(borderColor),
                focusedBorder: border(borderColor),
                disabledBorder: border(borderColor),
                errorBorder: border(AppScaleColor.red),
                suffixIcon: widget.suffix,
              ),
            ),
            if (widget.maxLength != null)
              Positioned(
                bottom: 16,
                right: 16,
                child: Text(
                  '$currentLength/${widget.maxLength}',
                  style: AppTextStyle.textSr.copyWith(
                    color: AppScaleColor.gray400,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: AppLayout.marginPaddingXxs),
        if (widget.errorText != null || widget.helpMessage != null)
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppLayout.marginPaddingXs,
              5,
              AppLayout.marginPaddingXs,
              5,
            ),
            child: Text(
              widget.errorText ?? widget.helpMessage ?? '',
              style: AppTextStyle.textSr.copyWith(
                color: isError ? AppScaleColor.red : AppScaleColor.gray500,
              ),
            ),
          ),
      ],
    );
  }
}
