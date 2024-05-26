import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/keyboard_dismiss_ontap.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_outlined_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/authentication/logic/cubit/signin_cubit.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/widgets/signin_bloc_listener.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/widgets/signin_form.dart';
import 'package:x_sport_dashboard_app/features/authentication/ui/widgets/underlined_text.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
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
                      context.tr('welcome_back'),
                      style: TextStyles.priamryTextRegular22,
                    ),
                    verticalSpace(57),
                    const SigninForm(),
                    verticalSpace(28),
                    AppTextButton(
                      text: 'signin',
                      textStyle: TextStyles.whiteBold18,
                      onPressed: () => validateThenLogin(context),
                    ),
                    verticalSpace(21),
                    Divider(
                      indent: 75.w,
                      endIndent: 75.w,
                    ),
                    verticalSpace(21),
                    AppOutlinedButton(
                      text: 'signin_with',
                      args: 'google',
                      onPressed: () =>
                          context.pushReplacementNamed(Routes.homeScreen),
                      image: AssetsManager.icons.google,
                      iconHeight: 40,
                      iconWidth: 40,
                    ),
                    verticalSpace(17),
                    AppOutlinedButton(
                      text: 'signin_with',
                      args: 'apple',
                      onPressed: () =>
                          context.pushReplacementNamed(Routes.homeScreen),
                      image: AssetsManager.icons.apple,
                      iconHeight: 40,
                      iconWidth: 40,
                    ),
                    verticalSpace(17),
                    AppOutlinedButton(
                      text: 'signin_with',
                      args: 'facebook',
                      onPressed: () =>
                          context.pushReplacementNamed(Routes.homeScreen),
                      image: AssetsManager.icons.facebook,
                      iconHeight: 40,
                      iconWidth: 40,
                    ),
                    verticalSpace(50),
                    UnderlinedText(
                      text: 'dont_have_an_account',
                      underlinedText: 'create_your_account_now',
                      onTap: () => context.pushNamed(Routes.signupScreen),
                    ),
                    verticalSpace(50),
                    const SigninBlocListener(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<SigninCubit>().formKey.currentState!.validate()) {
      context.read<SigninCubit>().emitLoginStates();
    }
  }
}
