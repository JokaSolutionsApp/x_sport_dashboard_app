import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:x_sport_dashboard_app/core/theming/colors.dart';
import 'package:x_sport_dashboard_app/core/theming/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_icon_button.dart';

class AppPasswordFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  const AppPasswordFormField({
    super.key,
    this.controller,
    this.validator,
  });

  @override
  State<AppPasswordFormField> createState() => _AppPasswordFormFieldState();
}

class _AppPasswordFormFieldState extends State<AppPasswordFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: widget.validator,
      controller: widget.controller,
      cursorColor: ColorsManager.fieldBorderColor,
      style: TextStyles.primaryLight12,
      decoration: InputDecoration(
        isDense: true,
        hintStyle: TextStyles.secondaryLight12,
        hintText: context.tr('password'),
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
        suffixIcon: obscureText
            ? AppIconButton(
                onTap: () => setState(
                  () {
                    obscureText = !obscureText;
                  },
                ),
                icon: const Icon(
                  Icons.visibility_off,
                  color: ColorsManager.fieldBorderColor,
                ),
              )
            : AppIconButton(
                onTap: () => setState(
                  () {
                    obscureText = !obscureText;
                  },
                ),
                icon: const Icon(
                  Icons.visibility,
                  color: ColorsManager.fieldBorderColor,
                ),
              ),
      ),
    );
  }
}
