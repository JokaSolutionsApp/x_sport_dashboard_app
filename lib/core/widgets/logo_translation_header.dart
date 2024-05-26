import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/translation_icon_button.dart';

class LogoTranslationHeader extends StatelessWidget {
  final bool backButton;
  const LogoTranslationHeader({
    super.key,
    this.backButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(80),
        Stack(
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
            if (backButton)
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: IntrinsicWidth(
                  child: ListTile(
                    horizontalTitleGap: 0,
                    onTap: () => context.pop(),
                    visualDensity: VisualDensity.compact,
                    dense: true,
                    leading: const Icon(Icons.arrow_back_ios),
                    title: Text(
                      context.tr('back'),
                      style: TextStyles.primaryTextRegular18,
                    ),
                  ),
                ),
              ),
          ],
        ),
        verticalSpace(13),
      ],
    );
  }
}
