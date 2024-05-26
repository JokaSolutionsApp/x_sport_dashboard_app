import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

import '../../../core/utils/assets_managers/assets.gen.dart';

class AppOutlinedButton extends StatelessWidget {
  final String text;
  final String? args;
  final double? iconHeight;
  final double? iconWidth;
  final AssetGenImage image;
  final void Function() onPressed;
  const AppOutlinedButton({
    super.key,
    required this.text,
    this.args,
    this.iconHeight,
    this.iconWidth,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        side: const BorderSide(
          color: ColorsManager.fieldBorder,
        ),
        textStyle: TextStyles.primaryTextLight14,
      ),
      child: Row(
        children: [
          image.image(
            height: iconHeight?.h,
            width: iconWidth?.w,
          ),
          horizontalSpace(9),
          Text(
            context.tr(
              text,
              args: [args ?? ''],
            ),
            style: TextStyles.primaryTextLight14,
          ),
        ],
      ),
    );
  }
}
