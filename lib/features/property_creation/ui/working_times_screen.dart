import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/keyboard_dismiss_ontap.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_form_field.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class WorkingTimesScreen extends StatelessWidget {
  const WorkingTimesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool sat = false;
    return Scaffold(
      body: KeyboardDismissOnTap(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                children: [
                  buildHeader(),
                  verticalSpace(40),
                  buildTimeRow(
                      context: context, dayName: 'Saturday', dayValue: sat),
                  verticalSpace(40),
                  buildTimeRow(context: context, dayName: 'Sunday'),
                  verticalSpace(40),
                  buildTimeRow(context: context, dayName: 'Monday'),
                  verticalSpace(40),
                  buildTimeRow(context: context, dayName: 'Tuesday'),
                  verticalSpace(40),
                  buildTimeRow(context: context, dayName: 'Wedensday'),
                  verticalSpace(40),
                  buildTimeRow(context: context, dayName: 'Thursday'),
                  verticalSpace(40),
                  buildTimeRow(context: context, dayName: 'Friday'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimeRow({
    required BuildContext context,
    required String dayName,
    bool? dayValue,
  }) {
    return Row(
      children: [
        Expanded(
          child: Text(
            context.tr(dayName),
            style: TextStyles.primaryTextRegular18,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(
          height: 55.h,
          child: Switch(
            value: dayValue ?? false,
            onChanged: (v) {},
          ),
        ),
        horizontalSpace(23),
        SizedBox(
          width: 107.w,
          child: const AppTextFormField(
            hintText: 'Opening',
            prefixIcon: Icon(
              Icons.watch_later_outlined,
              color: ColorsManager.secondaryText,
            ),
          ),
        ),
        horizontalSpace(21),
        SizedBox(
          width: 107.w,
          child: AppTextFormField(
            hintText: 'Closing',
            hintStyle: TextStyles.secondaryTextRegular14,
            prefixIcon: const Icon(
              Icons.watch_later_outlined,
              color: ColorsManager.secondaryText,
            ),
          ),
        ),
      ],
    );
  }

  Column buildHeader() {
    return const Column(
      children: [
        LogoTranslationHeader(
          backButton: true,
        ),
        StepText(
          stepNumber: '3-3: ',
          stepTitle: 'Set working days and hours',
        ),
      ],
    );
  }
}
