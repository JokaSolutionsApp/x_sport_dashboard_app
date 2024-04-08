import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/routing/app_router.dart';
import 'package:x_sport_dashboard_app/x_sports_dashboard_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale(
          'en',
        ),
        Locale(
          'ar',
        ),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale(
        'en',
      ),
      saveLocale: true,
      child: XSportsDashboardApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
