import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/image_collection_placeholder.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class CourtImagesReviewScreen extends StatelessWidget {
  const CourtImagesReviewScreen({super.key});

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
                  stepNumber: '2-2: ',
                  stepTitle: 'review_your_images',
                ),
                verticalSpace(13),
                const ImageCollectionPlaceholder(),
                verticalSpace(25),
                AppTextButton(
                  text: 'next',
                  textStyle: TextStyles.whiteRegular20,
                  onPressed: () => context.pushNamed(
                    Routes.chooseReservationTypeScreen,
                  ),
                ),
                verticalSpace(25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
