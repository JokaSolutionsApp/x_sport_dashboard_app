import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';

class TranslationIconButton extends StatelessWidget {
  const TranslationIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () => context.locale == const Locale('ar')
          ? context.setLocale(
              const Locale(
                'en',
              ),
            )
          : context.setLocale(
              const Locale(
                'ar',
              ),
            ),
      child: AssetsManager.icons.translate.image(
        height: 33.w,
        width: 33.w,
      ),
    );
  }
}
