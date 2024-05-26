import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/amenity_card.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class CourtAmenitiesScreen extends StatelessWidget {
  const CourtAmenitiesScreen({super.key});

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
                  stepNumber: '1-7: ',
                  stepTitle: 'Pick your courts amenities',
                ),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 8.h,
                  crossAxisSpacing: 4.w,
                  children: [
                    AmenityCard(
                      icon: AssetsManager.icons.medical.image(
                        height: 30.w,
                        width: 30.w,
                      ),
                      text: 'medical',
                    ),
                    AmenityCard(
                      icon: AssetsManager.icons.cafeteria.image(
                        height: 30.w,
                        width: 30.w,
                      ),
                      text: 'cafeteria',
                    ),
                    AmenityCard(
                      icon: AssetsManager.icons.transportation.image(
                        height: 30.w,
                        width: 30.w,
                      ),
                      text: 'transportation',
                    ),
                    AmenityCard(
                      icon: AssetsManager.icons.bathrooms.image(
                        height: 30.w,
                        width: 30.w,
                      ),
                      text: 'bathrooms',
                    ),
                    AmenityCard(
                      icon: AssetsManager.icons.grass.image(
                        height: 30.w,
                        width: 30.w,
                      ),
                      text: 'grass',
                    ),
                    const AmenityCard(
                      icon: Icon(
                        Icons.wifi,
                        color: ColorsManager.primary,
                      ),
                      text: 'wi-fi',
                    ),
                    AmenityCard(
                      icon: AssetsManager.icons.flexable.image(
                        height: 30.w,
                        width: 30.w,
                      ),
                      text: 'flexiable_reservations',
                    ),
                    AmenityCard(
                      icon: AssetsManager.icons.championships.image(
                        height: 30.w,
                        width: 30.w,
                      ),
                      text: 'championships',
                    ),
                    AmenityCard(
                      icon: AssetsManager.icons.spa.image(
                        height: 30.w,
                        width: 30.w,
                      ),
                      text: 'spa',
                    ),
                  ],
                ),
                verticalSpace(80),
                AppTextButton(
                  text: 'next',
                  textStyle: TextStyles.whiteRegular20,
                  onPressed: () => context.pushNamed(
                    Routes.propertyNameScreen,
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
