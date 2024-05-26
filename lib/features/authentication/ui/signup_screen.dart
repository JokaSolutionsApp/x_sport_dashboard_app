import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/keyboard_dismiss_ontap.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_outlined_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/authentication/logic/cubit/signup_cubit.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/widgets/signup_bloc_listener.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  const LogoTranslationHeader(),
                  Text(
                    context.tr('join_xsports'),
                    style: TextStyles.priamryTextRegular22,
                  ),
                  verticalSpace(57),
                  const SignupForm(),
                  verticalSpace(28),
                  AppTextButton(
                    text: 'signup',
                    textStyle: TextStyles.whiteBold18,
                    onPressed: () => validateThenSignup(context),
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
                    iconHeight: 40,
                    iconWidth: 40,
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
                    iconHeight: 40,
                    iconWidth: 40,
                  ),
                  verticalSpace(50),
                  const SignupBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitLoginStates();
    }
  }
}
