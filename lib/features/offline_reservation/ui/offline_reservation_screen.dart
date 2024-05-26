import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_dropdown_button_form_field.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_form_field.dart';
import 'package:x_sport_dashboard_app/features/offline_reservation/ui/widgets/app_dropdown_search.dart';

class OfflineReservationScreen extends StatelessWidget {
  const OfflineReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr('add_new_reservation'),
          style: TextStyles.primaryTextRegular18,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Column(
              children: [
                const AppDropdownSearch(),
                verticalSpace(30),
                const AppTextFormField(
                  hintText: 'reservartion_name',
                ),
                verticalSpace(30),
                const AppTextFormField(
                  hintText: 'Phone number',
                ),
                verticalSpace(30),
                const AppDropdownButtonFormField(
                  hintText: 'game',
                ),
                verticalSpace(30),
                const AppDropdownButtonFormField(
                  hintText: 'floor',
                  args: [''],
                ),
                verticalSpace(30),
                const AppTextFormField(
                  enabled: false,
                  hintText: 'date sample',
                  suffixIcon: Icon(
                    Icons.calendar_today_outlined,
                    color: ColorsManager.primaryText,
                  ),
                ),
                verticalSpace(30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          context.tr('start_date'),
                          style: TextStyles.secondaryTextRegular12,
                        ),
                      ),
                      horizontalSpace(20),
                      Expanded(
                        child: Text(
                          context.tr('end_date'),
                          style: TextStyles.secondaryTextRegular12,
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(10),
                Row(
                  children: [
                    const Expanded(
                      child: AppTextFormField(
                        borderColor: ColorsManager.secondary,
                        fillColor: ColorsManager.secondary,
                        filled: true,
                        enabled: false,
                        hintText: 'sample date',
                        prefixIcon: Icon(
                          Icons.calendar_today_outlined,
                          color: ColorsManager.primaryText,
                        ),
                      ),
                    ),
                    horizontalSpace(20),
                    const Expanded(
                      child: AppTextFormField(
                        borderColor: ColorsManager.secondary,
                        fillColor: ColorsManager.secondary,
                        filled: true,
                        enabled: false,
                        hintText: 'sample date',
                        prefixIcon: Icon(
                          Icons.calendar_today_outlined,
                          color: ColorsManager.primaryText,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          context.tr('reservation_start'),
                          style: TextStyles.secondaryTextRegular12,
                        ),
                      ),
                      horizontalSpace(20),
                      Expanded(
                        child: Text(
                          context.tr('reservation_end'),
                          style: TextStyles.secondaryTextRegular12,
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(10),
                Row(
                  children: [
                    const Expanded(
                      child: AppTextFormField(
                        enabled: false,
                        suffixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text('9:00 AM'),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.watch_later_outlined,
                          color: ColorsManager.primaryText,
                        ),
                      ),
                    ),
                    horizontalSpace(20),
                    const Expanded(
                      child: AppTextFormField(
                        enabled: false,
                        suffixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text('9:00 AM'),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.watch_later_outlined,
                          color: ColorsManager.primaryText,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(30),
                Row(
                  children: [
                    const Expanded(
                      child: AppDropdownButtonFormField(
                        hintText: 'gender',
                      ),
                    ),
                    horizontalSpace(20),
                    const Expanded(
                      child: AppDropdownButtonFormField(
                        hintText: 'age',
                      ),
                    ),
                  ],
                ),
                verticalSpace(30),
                AppTextButton(
                  text: 'create_reservation',
                  textStyle: TextStyles.whiteRegular20,
                  onPressed: () {},
                ),
                verticalSpace(30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
