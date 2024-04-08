import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/widgets/translation_icon_button.dart';

class AuthenticationHeader extends StatelessWidget {
  const AuthenticationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: AssetsManager.images.authentication.logo.image(
            height: 101.h,
            width: 106.w,
          ),
        ),
        const Align(
          alignment: AlignmentDirectional.centerEnd,
          child: TranslationIconButton(),
        ),
      ],
    );
  }
}
