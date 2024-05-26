import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_icon_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';

class NewFloor extends StatelessWidget {
  const NewFloor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(10),
        ListTile(
          dense: true,
          visualDensity: VisualDensity.compact,
          title: Text(
            context.tr('new_floor'),
            style: TextStyles.priamryTextRegular22,
          ),
          trailing: const Icon(
            CupertinoIcons.plus_circle,
            color: ColorsManager.black,
          ),
          onTap: () => showDialog(
            context: context,
            builder: (context) => Dialog(
              backgroundColor: ColorsManager.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpace(20.h),
                  Text(
                    context.tr('floor', args: ['2']),
                    style: TextStyles.primaryTextRegular18,
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Text(
                          context.tr('number_of_players'),
                          style: TextStyles.primaryTextLight14,
                        ),
                        const Spacer(),
                        AppIconButton(
                          onTap: () {},
                          icon: const Icon(Icons.remove),
                        ),
                        const Text('1'),
                        AppIconButton(
                          onTap: () {},
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -18),
                    child: Divider(
                      indent: 18.w,
                      endIndent: 24.w,
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Text(
                          context.tr('covered'),
                          style: TextStyles.primaryTextLight14,
                        ),
                        const Spacer(),
                        Switch(
                          activeColor: ColorsManager.primary,
                          value: true,
                          onChanged: (v) {},
                        )
                      ],
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -18),
                    child: Divider(
                      indent: 18.w,
                      endIndent: 24.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 20.w, end: 26.w),
                    child: DropdownButtonFormField(
                      hint: Text(
                        context.tr('sport_type'),
                        style: TextStyles.primaryTextLight14,
                      ),
                      items: const [],
                      onChanged: (v) {},
                    ),
                  ),
                  verticalSpace(50.h),
                  AppTextButton(
                    buttonWidth: 121.w,
                    text: 'add',
                    textStyle: TextStyles.whiteRegular14,
                    onPressed: () => context.pop(),
                  ),
                  verticalSpace(50.h),
                ],
              ),
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
