import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_form_field.dart';

class FloorPricingWidget extends StatelessWidget {
  final int index;
  const FloorPricingWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.tr('floor', args: [(index + 1).toString()]),
            style: TextStyles.primaryTextBold16,
          ),
          verticalSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: ColorsManager.white,
                shape: const BeveledRectangleBorder(),
                child: SizedBox(
                  height: 36.h,
                  width: 105.w,
                  child: Center(
                    child: Text(
                      context.tr('players'),
                    ),
                  ),
                ),
              ),
              Card(
                color: ColorsManager.white,
                shape: const BeveledRectangleBorder(),
                child: SizedBox(
                  height: 36.h,
                  width: 105.w,
                  child: Center(
                    child: Text(
                      context.tr('covered'),
                    ),
                  ),
                ),
              ),
              Card(
                color: ColorsManager.white,
                shape: const BeveledRectangleBorder(),
                child: SizedBox(
                  height: 36.h,
                  width: 105.w,
                  child: Center(
                    child: Text(
                      context.tr('football'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              const Expanded(
                child: AppTextFormField(
                  hintText: '100',
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              horizontalSpace(25),
              Expanded(
                child: Text(
                  context.tr('sar_price_per_hour'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
