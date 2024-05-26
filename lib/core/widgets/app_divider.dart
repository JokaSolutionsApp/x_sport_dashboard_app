import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';

class AppDivider extends StatelessWidget {
  final double? indent;
  final double? endIndent;
  const AppDivider({
    super.key,
    this.indent,
    this.endIndent,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorsManager.divider,
      thickness: 0.5,
      indent: indent ?? 75.w,
      endIndent: endIndent ?? 75.w,
    );
  }
}
