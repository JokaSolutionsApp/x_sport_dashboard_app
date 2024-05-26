import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class ImagePlaceholder extends StatelessWidget {
  final void Function()? onTap;
  final Widget icon;
  final String text;
  const ImagePlaceholder({
    super.key,
    this.onTap,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [4, 4],
      color: ColorsManager.fieldBorder,
      borderType: BorderType.RRect,
      radius: Radius.circular(12.r),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: ColorsManager.fieldBackground,
            borderRadius: BorderRadius.all(
              Radius.circular(12.r),
            ),
          ),
          padding: const EdgeInsets.all(6),
          child: Center(
            child: Column(
              children: [
                Text(
                  context.tr('image'),
                  style: TextStyles.secondaryTextLight12,
                ),
                verticalSpace(20),
                const Icon(
                  Icons.add,
                  color: ColorsManager.secondaryText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
