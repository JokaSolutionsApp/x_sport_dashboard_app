import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/keyboard_dismiss_ontap.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_form_field.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class PropertyLocationReviewScreen extends StatelessWidget {
  const PropertyLocationReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardDismissOnTap(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: Column(
                children: [
                  const LogoTranslationHeader(
                    backButton: true,
                  ),
                  const StepText(
                    stepNumber: '1-4: ',
                    stepTitle: 'review_location_information',
                  ),
                  verticalSpace(40),
                  const AppTextFormField(
                    hintText: 'country',
                    filled: true,
                    fillColor: ColorsManager.fieldBackground,
                  ),
                  verticalSpace(23),
                  const AppTextFormField(
                    hintText: 'city',
                    filled: true,
                    fillColor: ColorsManager.fieldBackground,
                  ),
                  verticalSpace(23),
                  const AppTextFormField(
                    hintText: 'streed_address',
                    filled: true,
                    fillColor: ColorsManager.fieldBackground,
                  ),
                  verticalSpace(23),
                  const AppTextFormField(
                    hintText: 'building_number',
                    filled: true,
                    fillColor: ColorsManager.fieldBackground,
                  ),
                  verticalSpace(165),
                  AppTextButton(
                    text: 'next',
                    textStyle: TextStyles.whiteRegular20,
                    onPressed: () => context.pushNamed(
                      Routes.propertyLocationConfirmationScreen,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
