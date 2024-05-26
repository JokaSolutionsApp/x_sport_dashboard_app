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

class PropertyDescriptionScreen extends StatelessWidget {
  const PropertyDescriptionScreen({super.key});

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
                    stepNumber: '1-2: ',
                    stepTitle: 'add_description_about_your_court',
                  ),
                  verticalSpace(90),
                  const AppTextFormField(
                    hintText: 'write_here',
                    keyboardType: TextInputType.multiline,
                    minLines: 5,
                    maxLines: 5,
                    filled: true,
                    fillColor: ColorsManager.fieldBackground,
                  ),
                  verticalSpace(56),
                  Text(
                    context.tr(
                        'everyone_will_be_able_to_see_the_description_of_your_court'),
                    style: TextStyles.primaryTextLight18,
                  ),
                  verticalSpace(200),
                  AppTextButton(
                    text: 'next',
                    textStyle: TextStyles.whiteRegular20,
                    onPressed: () => context.pushNamed(
                      Routes.propertyLocationScreen,
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
