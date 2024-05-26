import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/routing/app_router.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';

class XSportsDashboardApp extends StatelessWidget {
  final AppRouter appRouter;
  const XSportsDashboardApp({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    // var kColorScheme = ColorScheme.fromSeed(
    //   seedColor: const Color.fromARGB(255, 96, 59, 181),
    // );

    // var kDarkColorScheme = ColorScheme.fromSeed(
    //   brightness: Brightness.dark,
    //   seedColor: const Color.fromARGB(255, 5, 99, 125),
    // );

    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'X Sports Dahsboard App',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: ColorsManager.scaffoldBackground,
            centerTitle: true,
          ),
          primaryColor: ColorsManager.primary,
          scaffoldBackgroundColor: ColorsManager.scaffoldBackground,
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.light,
            seedColor: ColorsManager.primary,
            surface: ColorsManager.white,
            surfaceTint: ColorsManager.white,
          ),
        ),
        // darkTheme: ThemeData.dark().copyWith(
        //   colorScheme: kDarkColorScheme,
        //   cardTheme: const CardTheme().copyWith(
        //     color: kDarkColorScheme.secondaryContainer,
        //     margin: const EdgeInsets.symmetric(
        //       horizontal: 16,
        //       vertical: 8,
        //     ),
        //   ),
        //   elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: kDarkColorScheme.primaryContainer,
        //       foregroundColor: kDarkColorScheme.onPrimaryContainer,
        //     ),
        //   ),
        // ),
        // theme: ThemeData().copyWith(
        //   colorScheme: kColorScheme,
        //   appBarTheme: const AppBarTheme().copyWith(
        //     backgroundColor: kColorScheme.onPrimaryContainer,
        //     foregroundColor: kColorScheme.primaryContainer,
        //   ),
        //   cardTheme: const CardTheme().copyWith(
        //     color: kColorScheme.secondaryContainer,
        //     margin: const EdgeInsets.symmetric(
        //       horizontal: 16,
        //       vertical: 8,
        //     ),
        //   ),
        //   elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: kColorScheme.primaryContainer,
        //     ),
        //   ),
        //   textTheme: ThemeData().textTheme.copyWith(
        //         titleLarge: TextStyle(
        //           fontWeight: FontWeight.normal,
        //           color: kColorScheme.onSecondaryContainer,
        //           fontSize: 14,
        //         ),
        //       ),
        // ),
        // themeMode: ThemeMode.dark,

        debugShowCheckedModeBanner: false,
        initialRoute: Routes.signinScreen,
        // initialRoute: Routes.navigationScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
