import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class PropertyLocationConfirmationScreen extends StatelessWidget {
  const PropertyLocationConfirmationScreen({super.key});

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
                const LogoTranslationHeader(
                  backButton: true,
                ),
                const StepText(
                  stepNumber: '1-5: ',
                  stepTitle: 'confirm_location',
                ),
                verticalSpace(40),
                AssetsManager.images.propertyCreation.map.image(
                  height: 352.w,
                  width: 352.w,
                ),
                verticalSpace(80),
                AppTextButton(
                  text: 'next',
                  textStyle: TextStyles.whiteRegular20,
                  onPressed: () => context.pushNamed(
                    Routes.propertyCourtInfoScreen,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
