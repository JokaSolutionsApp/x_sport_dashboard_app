import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final String text;
  final TextStyle textStyle;
  final void Function()? onPressed;
  final bool withShadow;
  const AppTextButton({
    super.key,
    this.borderRadius = 5.0,
    this.backgroundColor = ColorsManager.primary,
    this.buttonHeight,
    this.buttonWidth = double.maxFinite,
    required this.text,
    required this.textStyle,
    required this.onPressed,
    this.withShadow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: withShadow ? 1 : 0,
      borderRadius: BorderRadius.circular(
        borderRadius!.r,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius!,
            ),
          ),
          backgroundColor: backgroundColor,
          fixedSize: Size(
            buttonWidth!.w,
            buttonHeight?.h ?? 45.h,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          context.tr(text),
          style: textStyle,
        ),
      ),
    );
  }
}
