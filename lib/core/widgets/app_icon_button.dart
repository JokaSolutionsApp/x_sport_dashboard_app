import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';

class AppIconButton extends StatelessWidget {
  final void Function()? onTap;
  final Icon? icon;
  final Image? image;
  final Color? backgroundColor;
  const AppIconButton({
    super.key,
    required this.onTap,
    this.icon,
    this.image,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    if (image != null || icon != null) {
      return Ink(
        decoration: backgroundColor != null
            ? backgroundColor == ColorsManager.white
                ? BoxDecoration(
                    border: Border.all(
                      color: ColorsManager.secondaryText,
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                    color: backgroundColor,
                  )
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: backgroundColor,
                  )
            : null,
        child: InkWell(
          borderRadius: backgroundColor != null
              ? BorderRadius.circular(12.r)
              : BorderRadius.circular(100.r),
          onTap: onTap,
          child: Padding(
            padding: backgroundColor != null
                ? const EdgeInsets.all(10.0)
                : EdgeInsets.zero,
            child: image ?? icon,
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
