import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/payment_method_radio_list_tile.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

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
                  stepNumber: '3-4: ',
                  stepTitle: 'choose_payment_method',
                ),
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    PaymentMethodRadioListTile(
                      value: true,
                      text: 'Master Card',
                      image: AssetsManager.icons.masterCard.image(
                        height: 30.h,
                        width: 39.w,
                      ),
                    ),
                    PaymentMethodRadioListTile(
                      value: false,
                      text: 'Paypal',
                      image: AssetsManager.icons.paypal.image(
                        height: 39.h,
                        width: 33.w,
                      ),
                    ),
                    PaymentMethodRadioListTile(
                      value: false,
                      text: 'VISA',
                      image: AssetsManager.icons.visa.image(
                        height: 16.h,
                        width: 49.w,
                      ),
                    ),
                  ],
                ),
                verticalSpace(225),
                AppTextButton(
                  text: 'next',
                  textStyle: TextStyles.whiteRegular20,
                  onPressed: () => context.pushNamed(
                    Routes.paymentMethodInfoScreen,
                    arguments: {
                      'image': AssetsManager.icons.visa.image(
                        height: 16.h,
                        width: 49.w,
                      ),
                    },
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
