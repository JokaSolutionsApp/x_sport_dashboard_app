import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/property_type_card.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class ChoosePropertyScreen extends StatelessWidget {
  const ChoosePropertyScreen({super.key});

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
                  stepNumber: '1-1: ',
                  stepTitle: 'choose_your_property',
                ),
                verticalSpace(125),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: Row(
                    children: [
                      PropertyTypeCard(
                        text: 'court',
                        onTap: () => context.pushNamed(
                          Routes.propertyDescriptionScreen,
                        ),
                      ),
                      horizontalSpace(20),
                      const PropertyTypeCard(
                        text: 'academy',
                      ),
                    ],
                  ),
                ),
                verticalSpace(56),
                Text(
                  context.tr(
                      'you_can_add_another_property_later_in_case_you_own_a_court_and_an_academy_at_the_same_time'),
                  style: TextStyles.primaryTextLight18,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
