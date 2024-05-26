import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class OfflineReservationListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget leadingIcon;
  final void Function()? onTap;
  const OfflineReservationListTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.leadingIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(5.r),
      child: ListTile(
        onTap: onTap,
        dense: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        leading: leadingIcon,
        title: Text(
          context.tr(title),
          style: TextStyles.primaryTextBold12,
        ),
        subtitle: Text(
          context.tr(subTitle),
          style: TextStyles.secondaryTextRegular12,
        ),
        trailing: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorsManager.secondaryText,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Icon(
              size: 15,
              Icons.arrow_forward_ios_rounded,
              color: ColorsManager.secondaryText,
            ),
          ),
        ),
      ),
    );
  }
}
