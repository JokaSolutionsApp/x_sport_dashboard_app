import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/theming/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_form_field.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/widgets/authentication_header.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/widgets/underlined_text.dart';

class AccountConfirmationScreen extends StatelessWidget {
  const AccountConfirmationScreen({super.key});

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
                  context.tr('account_confirmation'),
                  style: TextStyles.priamryRegular22,
                ),
                verticalSpace(57),
                const AppTextFormField(
                  hintText: 'sample email',
                  enabled: false,
                ),
                verticalSpace(28),
                const AppTextFormField(
                  hintText: 'code',
                ),
                verticalSpace(24),
                UnderlinedText(
                  text: 'check_your_email_inbox',
                  underlinedText: 'send_again',
                  onTap: () {},
                ),
                verticalSpace(70),
                AppTextButton(
                  text: 'account_confirmation',
                  textStyle: TextStyles.whiteBold18,
                  onPressed: () => context.pushNamed(Routes.homeScreen),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
