import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/theming/colors.dart';
import 'package:x_sport_dashboard_app/core/theming/styles.dart';

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
          borderRadius: BorderRadius.circular(5),
        ),
        side: const BorderSide(
          color: ColorsManager.fieldBorderColor,
        ),
        textStyle: TextStyles.primaryLight14,
      ),
      child: Row(
        children: [
          image.image(
            height: iconHeight?.h,
            width: iconWidth?.w,
          ),
          SizedBox(
            width: 9.w,
          ),
          Text(
            context.tr(
              text,
              args: [args ?? ''],
            ),
            style: TextStyles.primaryLight14,
          ),
        ],
      ),
    );
  }
}
