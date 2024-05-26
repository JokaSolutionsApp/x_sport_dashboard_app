import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_divider.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              context.tr('Menu'),
              style: TextStyles.primaryTextRegular18,
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 38.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Text(
                    context.tr('Property'),
                    style: TextStyles.secondaryTextRegular16,
                  ),
                  verticalSpace(10),
                  menuListTile(
                    context: context,
                    title: 'Court basics',
                  ),
                  menuListTile(
                    context: context,
                    title: 'Court Multimedia',
                  ),
                  menuListTile(
                    context: context,
                    title: 'Court amenities',
                  ),
                  AppDivider(
                    indent: 35.w,
                    endIndent: 35.w,
                  ),
                  Text(
                    context.tr('Reservations'),
                    style: TextStyles.secondaryTextRegular16,
                  ),
                  verticalSpace(10),
                  menuListTile(
                    context: context,
                    title: 'Working days and hours',
                  ),
                  menuListTile(
                    context: context,
                    title: 'Reservation settings',
                  ),
                  menuListTile(
                    context: context,
                    title: 'Reservation prices',
                  ),
                  menuListTile(
                    context: context,
                    title: 'Opponent',
                  ),
                  menuListTile(
                    context: context,
                    title: 'Closing days',
                  ),
                  AppDivider(
                    indent: 35.w,
                    endIndent: 35.w,
                  ),
                  Text(
                    context.tr('Financial'),
                    style: TextStyles.secondaryTextRegular16,
                  ),
                  verticalSpace(10),
                  menuListTile(
                    context: context,
                    title: 'Payment method',
                  ),
                  menuListTile(
                    context: context,
                    title: 'Subscriptions',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ListTile menuListTile({
    required BuildContext context,
    required String title,
    void Function()? onTap,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        context.tr(title),
        style: TextStyles.primaryTextRegular18,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 20.sp,
      ),
      onTap: onTap,
    );
  }
}
