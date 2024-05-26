import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/reservation_type_container.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class ChooseReservationTypeScreen extends StatelessWidget {
  const ChooseReservationTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Column(
              children: [
                const LogoTranslationHeader(),
                const StepText(
                  stepNumber: '3-1: ',
                  stepTitle: 'choose_reservation_type_in_your_court',
                ),
                verticalSpace(50),
                const ReservationTypeContainer(
                  title: 'direct_reservation',
                  subTitle:
                      'user_will_be_able_to_directly_book_reservation_without_having_your_confirmation',
                  icon: Icons.bolt_outlined,
                ),
                verticalSpace(20),
                const ReservationTypeContainer(
                  title: 'pinned_reservation',
                  subTitle:
                      'reservation_will_be_pinned_unitl_its_accepted_or_rejected_by_you',
                  icon: Icons.wechat_outlined,
                ),
                verticalSpace(56),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
