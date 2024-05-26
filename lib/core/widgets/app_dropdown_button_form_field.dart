import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class AppDropdownButtonFormField extends StatelessWidget {
  final String? hintText;
  final String? label;
  final bool? filled;
  final Color? fillColor;
  final EdgeInsetsGeometry? contentPadding;
  final List<String>? args;

  const AppDropdownButtonFormField({
    this.hintText,
    this.label,
    super.key,
    this.filled,
    this.fillColor,
    this.contentPadding,
    this.args,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: const [],
      onChanged: (value) {},
      style: TextStyles.primaryTextLight12,
      hint: Center(
        child: Text(
          context.tr(
            hintText ?? '',
            args: args,
          ),
          style: TextStyles.secondaryTextLight12,
        ),
      ),
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 17.w,
              vertical: 17.h,
            ),
        label: label == null ? null : Text(context.tr(label.toString())),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.fieldBorder,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.fieldBorder,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.fieldBorder,
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
        labelStyle: TextStyles.secondaryTextLight12,
        floatingLabelStyle: TextStyles.secondaryTextLight12,
        // prefixIcon: icon,
        // alignLabelWithHint: true,
        // prefix: Text(prefix),
      ),
      // inputFormatters: inputformatter,
      // onSaved: onsaved,
      // onChanged: onchanged,
      // focusNode: foucsNode,
    );
  }
}
