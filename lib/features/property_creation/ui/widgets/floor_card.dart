import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_icon_button.dart';

class FloorCard extends StatelessWidget {
  const FloorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsManager.white,
      surfaceTintColor: ColorsManager.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.tr('floor', args: ['1']),
                  style: TextStyles.primaryTextBold16,
                ),
                AppIconButton(
                  onTap: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: ColorsManager.primary,
                  ),
                )
              ],
            ),
            Text(
              context.tr('number_of_players:', args: ['1']),
              style: TextStyles.primaryTextRegular14,
            ),
            verticalSpace(4),
            Text.rich(
              style: TextStyles.primaryTextRegular14,
              TextSpan(
                children: [
                  TextSpan(
                    text: context.tr('court_status'),
                  ),
                  TextSpan(
                    text: context.tr('covered'),
                  ),
                ],
              ),
            ),
            verticalSpace(4),
            Text.rich(
              style: TextStyles.primaryTextRegular14,
              TextSpan(
                children: [
                  TextSpan(
                    text: context.tr('sport_type:'),
                  ),
                  TextSpan(
                    text: context.tr('football'),
                  ),
                ],
              ),
            ),
            verticalSpace(4),
          ],
        ),
      ),
    );
  }
}
