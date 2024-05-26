import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AssetsManager.images.home.background.image(
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              verticalSpace(45),
              Center(
                child: AssetsManager.images.home.logoWhite.image(
                  height: 136.w,
                  width: 130.w,
                ),
              ),
              verticalSpace(12),
              Text(
                context.tr('welcome', args: ['username']),
                style: TextStyles.whiteBold25,
              ),
              verticalSpace(63),
              Text(
                context.tr('we_put_everything_in_one_place_for_you'),
                style: TextStyles.whiteRegular20,
                textAlign: TextAlign.center,
              ),
              verticalSpace(100),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 60.w),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () =>
                          context.pushNamed(Routes.choosePropertyScreen),
                      leading: const Icon(
                        CupertinoIcons.plus_circle,
                        color: ColorsManager.white,
                      ),
                      title: Text(
                        context.tr('create_new_property'),
                        style: TextStyles.whiteRegular20,
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: ColorsManager.white,
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
