import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class AppTextFormField extends StatelessWidget {
  final String? hintText;
  final String? label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool enabled;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final bool? filled;
  final Color? fillColor;
  final Color borderColor;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;

  const AppTextFormField({
    this.hintText,
    this.controller,
    this.validator,
    this.label,
    this.obscureText = false,
    this.enabled = true,
    super.key,
    this.keyboardType,
    this.minLines,
    this.maxLines,
    this.filled,
    this.fillColor,
    this.contentPadding,
    this.suffixIcon,
    this.prefixIcon,
    this.borderColor = ColorsManager.fieldBorder,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    final actualMaxLines = obscureText ? 1 : maxLines;

    return TextFormField(
      enabled: enabled,
      obscureText: obscureText,
      validator: validator,
      controller: controller,
      cursorColor: ColorsManager.fieldBorder,
      style: TextStyles.primaryTextLight12,
      keyboardType: keyboardType,
      minLines: minLines,
      maxLines: actualMaxLines,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        filled: filled,
        fillColor: fillColor,
        isDense: true,
        contentPadding: contentPadding,
        hintStyle: (hintStyle ??
            (enabled
                ? TextStyles.secondaryTextLight12
                : TextStyles.primaryTextRegular14)),
        hintText: context.tr(hintText ?? ''),
        label: label == null ? null : Text(context.tr(label.toString())),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
              ),
            ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.red,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.red,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
        labelStyle: TextStyles.secondaryTextLight12,
        floatingLabelStyle: TextStyles.secondaryTextLight12,
      ),
      inputFormatters: inputFormatters,
    );
  }
}
