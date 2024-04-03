import 'package:flutter/material.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/features/auth/ui/signin_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.signinScreen:
        return MaterialPageRoute(
          builder: (_) => const SigninScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
