import 'package:flutter/material.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/account_confirmation_screen.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/signin_screen.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/signup_screen.dart';
import 'package:x_sport_dashboard_app/features/home/ui/home.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.signinScreen:
        return MaterialPageRoute(
          builder: (_) => const SigninScreen(),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case Routes.accountConfirmationScreen:
        return MaterialPageRoute(
          builder: (_) => const AccountConfirmationScreen(),
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
