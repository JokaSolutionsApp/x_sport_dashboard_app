import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_form_field.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';

class PaymentMethodInfoScreen extends StatelessWidget {
  final Image? image;
  const PaymentMethodInfoScreen({
    super.key,
    this.image,
  });

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(context.tr('personal_card_info')),
                    image!,
                  ],
                ),
                verticalSpace(20),
                const AppTextFormField(),
                verticalSpace(20),
                const AppTextFormField(),
                verticalSpace(20),
                const AppTextFormField(),
                verticalSpace(20),
                const AppTextFormField(),
                verticalSpace(20),
                const AppTextFormField(),
                verticalSpace(20),
                const AppTextFormField(),
                verticalSpace(20),
                const AppTextFormField(),
                verticalSpace(20),
                AppTextButton(
                  text: 'next',
                  textStyle: TextStyles.whiteRegular20,
                  onPressed: () => context.pushNamedAndRemoveUntil(
                    Routes.navigationScreen,
                    predicate: (route) => false,
                  ),
                ),
                verticalSpace(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
