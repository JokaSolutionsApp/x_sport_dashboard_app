import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/theming/colors.dart';
import 'package:x_sport_dashboard_app/core/theming/font_weight_helper.dart';

class TextStyles {
  static TextStyle primarySemiBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManager.primaryTextColor,
  );
  static TextStyle priamryRegular22 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.primaryTextColor,
  );
  static TextStyle secondaryLight12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.light,
    color: ColorsManager.secondaryTextColor,
  );
  static TextStyle whiteBold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.white,
  );
  static TextStyle primaryLight14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.light,
    color: ColorsManager.primaryTextColor,
  );
  static TextStyle primaryLight12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.light,
    color: ColorsManager.primaryTextColor,
  );
  static TextStyle primaryRegularUnderLined16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.primaryTextColor,
    decoration: TextDecoration.underline,
  );
  static TextStyle whiteBold25 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.white,
  );
  static TextStyle whiteRegular20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.white,
  );
}
