import 'package:easy_localization/easy_localization.dart';
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

class PropertyNameScreen extends StatelessWidget {
  const PropertyNameScreen({super.key});

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
                    stepNumber: '1-8: ',
                    stepTitle: 'enter_court_name',
                  ),
                  verticalSpace(40),
                  const AppTextFormField(
                    hintText: 'court_name',
                    filled: true,
                    fillColor: ColorsManager.fieldBackground,
                  ),
                  verticalSpace(56),
                  Text(
                    context.tr(
                        'your_court_name_will_be_visiable_and_used_among_users_you_can_change_it_later_in_settings'),
                    style: TextStyles.primaryTextLight18,
                  ),
                  verticalSpace(300),
                  AppTextButton(
                    text: 'next',
                    textStyle: TextStyles.whiteRegular20,
                    onPressed: () => context.pushNamed(
                      Routes.courtImagesScreen,
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
