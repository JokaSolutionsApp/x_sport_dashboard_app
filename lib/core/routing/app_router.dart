import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:x_sport_dashboard_app/core/di/dependency_injection.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/features/authentication/logic/cubit/signin_cubit.dart';
import 'package:x_sport_dashboard_app/features/authentication/logic/cubit/signup_cubit.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/account_confirmation_screen.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/signin_screen.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/signup_screen.dart';
import 'package:x_sport_dashboard_app/features/offline_reservation/ui/choose_offline_reservation_type_screen.dart';
import 'package:x_sport_dashboard_app/features/offline_reservation/ui/choose_offline_reservation_user_type_screen.dart';
import 'package:x_sport_dashboard_app/features/offline_reservation/ui/offline_reservation_screen.dart';
import 'package:x_sport_dashboard_app/features/payment/ui/payment_method_info_screen.dart';
import 'package:x_sport_dashboard_app/features/personal_profile/ui/personal_profile_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/choose_property_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/choose_reservation_type_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/court_amenities_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/court_images_review_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/court_images_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/court_pricing_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/payment_method_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/property_court_info_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/property_description_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/property_location_confirmation_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/property_location_review_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/property_location_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/property_name_screen.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/working_times_screen.dart';
import 'package:x_sport_dashboard_app/features/schedule/ui/schedule_screen.dart';
import 'package:x_sport_dashboard_app/features/schedule/ui/schedule_screen2.dart';
import 'package:x_sport_dashboard_app/home_screen.dart';
import 'package:x_sport_dashboard_app/navigation_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;
    final arguments = settings.arguments as Map<String, dynamic>?;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.signinScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SigninCubit>(),
            child: const SigninScreen(),
          ),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.accountConfirmationScreen:
        return MaterialPageRoute(
          builder: (_) => const AccountConfirmationScreen(),
        );
      case Routes.choosePropertyScreen:
        return MaterialPageRoute(
          builder: (_) => const ChoosePropertyScreen(),
        );
      case Routes.propertyDescriptionScreen:
        return MaterialPageRoute(
          builder: (_) => const PropertyDescriptionScreen(),
        );
      case Routes.propertyLocationScreen:
        return MaterialPageRoute(
          builder: (_) => const PropertyLocationScreen(),
        );
      case Routes.propertyLocationReviewScreen:
        return MaterialPageRoute(
          builder: (_) => const PropertyLocationReviewScreen(),
        );
      case Routes.propertyLocationConfirmationScreen:
        return MaterialPageRoute(
          builder: (_) => const PropertyLocationConfirmationScreen(),
        );
      case Routes.propertyCourtInfoScreen:
        return MaterialPageRoute(
          builder: (_) => const PropertyCourtInfoScreen(),
        );
      case Routes.courtAminitesScreen:
        return MaterialPageRoute(
          builder: (_) => const CourtAmenitiesScreen(),
        );
      case Routes.propertyNameScreen:
        return MaterialPageRoute(
          builder: (_) => const PropertyNameScreen(),
        );
      case Routes.courtImagesScreen:
        return MaterialPageRoute(
          builder: (_) => const CourtImagesScreen(),
        );
      case Routes.courtImagesReviewScreen:
        return MaterialPageRoute(
          builder: (_) => const CourtImagesReviewScreen(),
        );
      case Routes.chooseReservationTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const ChooseReservationTypeScreen(),
        );
      case Routes.courtPricingScreen:
        return MaterialPageRoute(
          builder: (_) => const CourtPricingScreen(),
        );
      case Routes.workingTimesScreen:
        return MaterialPageRoute(
          builder: (_) => const WorkingTimesScreen(),
        );
      case Routes.paymentMethodScreen:
        return MaterialPageRoute(
          builder: (_) => const PaymentMethodScreen(),
        );
      case Routes.paymentMethodInfoScreen:
        final image = arguments?['image'];
        return MaterialPageRoute(
          builder: (_) => PaymentMethodInfoScreen(
            image: image,
          ),
        );
      case Routes.scheduleScreen:
        return MaterialPageRoute(
          builder: (_) => const ScheduleScreen(),
        );
      case Routes.scheduleScreen2:
        return MaterialPageRoute(
          builder: (_) => const ScheduleScreen2(),
        );
      case Routes.chooseOfflineReservationTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const ChooseOfflineReservationTypeScreen(),
        );
      case Routes.chooseOfflineReservationUserTypeScreen:
        return MaterialPageRoute(
          builder: (_) => const ChooseOfflineReservationUserTypeScreen(),
        );
      case Routes.offlineReservationScreen:
        return MaterialPageRoute(
          builder: (_) => const OfflineReservationScreen(),
        );
      case Routes.navigationScreen:
        return MaterialPageRoute(
          builder: (_) => const NavigationScreen(),
        );
      case Routes.personalProfileScreen:
        return MaterialPageRoute(
          builder: (_) => const PersonalProfileScreen(),
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
