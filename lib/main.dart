import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/routing/app_router.dart';
import 'package:x_sport_dashboard_app/x_sports_dashboard_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(
    XSportsDashboardApp(
      appRouter: AppRouter(),
    ),
  );
}
