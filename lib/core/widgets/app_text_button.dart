import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/theming/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final String text;
  final TextStyle textStyle;
  final void Function()? onPressed;
  const AppTextButton({
    super.key,
    this.borderRadius = 5.0,
    this.backgroundColor = ColorsManager.primaryColor,
    this.buttonHeight,
    this.buttonWidth = double.maxFinite,
    required this.text,
    required this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius!,
            ),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor,
        ),
        fixedSize: MaterialStateProperty.all(
          Size(
            buttonWidth!.w,
            buttonHeight ?? 45.h,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        context.tr(text),
        style: textStyle,
      ),
    );
  }
}
