import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class PropertyTypeCard extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const PropertyTypeCard({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: onTap != null ? ColorsManager.white : ColorsManager.fieldBorder,
        surfaceTintColor:
            onTap != null ? ColorsManager.white : ColorsManager.fieldBorder,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: InkWell(
          onTap: onTap ??
              () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Text(context.tr('coming_soon')),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(26),
                Text(
                  context.tr(text),
                  style: TextStyles.primaryTextRegular18,
                ),
                verticalSpace(35),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: context.locale.toString() == 'ar'
                      ? AssetsManager.icons.arrowForward.image(
                          height: 33.w,
                          width: 33.w,
                        )
                      : Transform.flip(
                          flipX: true,
                          child: AssetsManager.icons.arrowForward.image(
                            height: 33.w,
                            width: 33.w,
                          ),
                        ),
                ),
                verticalSpace(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
