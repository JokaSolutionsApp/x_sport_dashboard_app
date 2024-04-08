import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/theming/styles.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_outlined_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_password_form_field.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_form_field.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/widgets/authentication_header.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                const SizedBox(
                  height: 36,
                ),
                verticalSpace(36),
                const AuthenticationHeader(),
                verticalSpace(13),
                Text(
                  context.tr('join_xsports'),
                  style: TextStyles.priamryRegular22,
                ),
                verticalSpace(57),
                const AppTextFormField(
                  hintText: 'email_or_phone_number',
                ),
                verticalSpace(28),
                const AppPasswordFormField(),
                verticalSpace(28),
                const AppTextFormField(
                  hintText: 'confirm_password',
                  obscureText: true,
                ),
                verticalSpace(28),
                AppTextButton(
                  text: 'signup',
                  textStyle: TextStyles.whiteBold18,
                  onPressed: () {
                    context.pushNamed(Routes.accountConfirmationScreen);
                  },
                ),
                verticalSpace(21),
                Divider(
                  indent: 75.w,
                  endIndent: 75.w,
                ),
                verticalSpace(21),
                AppOutlinedButton(
                  text: 'signup_with',
                  args: 'google',
                  onPressed: () {},
                  image: AssetsManager.icons.google,
                ),
                verticalSpace(17),
                AppOutlinedButton(
                  text: 'signup_with',
                  args: 'apple',
                  onPressed: () {},
                  image: AssetsManager.icons.apple,
                  iconHeight: 40,
                  iconWidth: 40,
                ),
                verticalSpace(17),
                AppOutlinedButton(
                  text: 'signup_with',
                  args: 'facebook',
                  onPressed: () {},
                  image: AssetsManager.icons.facebook,
                ),
                verticalSpace(50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
