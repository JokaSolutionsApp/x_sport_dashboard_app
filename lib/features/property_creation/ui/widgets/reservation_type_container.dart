import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class ReservationTypeContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData? icon;
  const ReservationTypeContainer({
    super.key,
    required this.title,
    required this.subTitle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        Routes.courtPricingScreen,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorsManager.fieldBorder,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.w),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.tr(title),
                      style: TextStyles.primaryTextBold16,
                    ),
                    Text(
                      context.tr(subTitle),
                      style: TextStyles.primaryTextRegular14,
                    ),
                  ],
                ),
              ),
              horizontalSpace(10),
              Icon(
                icon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
