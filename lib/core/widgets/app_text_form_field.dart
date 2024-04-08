import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:x_sport_dashboard_app/core/theming/colors.dart';
import 'package:x_sport_dashboard_app/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final String? hintText;
  final String? label;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool enabled;

  const AppTextFormField({
    this.hintText,
    this.controller,
    this.validator,
    this.label,
    this.obscureText = false,
    this.enabled = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      obscureText: obscureText,
      validator: validator,
      controller: controller,
      cursorColor: ColorsManager.fieldBorderColor,
      style: TextStyles.primaryLight12,
      decoration: InputDecoration(
        isDense: true,
        hintStyle: TextStyles.secondaryLight12,
        hintText: context.tr(hintText ?? ''),
        label: label == null ? null : Text(context.tr(label.toString())),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.fieldBorderColor,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.fieldBorderColor,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.fieldBorderColor,
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
        labelStyle: TextStyles.secondaryLight12,
        floatingLabelStyle: TextStyles.secondaryLight12,
        // prefixIcon: icon,
        // alignLabelWithHint: true,
        // prefix: Text(prefix),
      ),
      // inputFormatters: inputformatter,
      // onSaved: onsaved,
      // onChanged: onchanged,
      // maxLines: maxlines,
      // keyboardType: keyboardtype,
      // focusNode: foucsNode,
    );
  }
}
