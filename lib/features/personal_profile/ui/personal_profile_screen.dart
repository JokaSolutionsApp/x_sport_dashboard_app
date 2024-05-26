import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_divider.dart';

class PersonalProfileScreen extends StatelessWidget {
  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.tr('Personal profile'),
            style: TextStyles.primaryTextRegular18,
          ),
          automaticallyImplyLeading: false,
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  personalProfileHeader(),
                  verticalSpace(20),
                  personalProfileViewAs(context),
                  verticalSpace(20),
                  const AppDivider(),
                  verticalSpace(20),
                  Text(
                    context.tr('Property information'),
                    style: TextStyles.primaryTextRegular14,
                  ),
                  verticalSpace(20),
                  personalProfileInfoTile(
                    context: context,
                    title: 'Location',
                    subtitle: 'نص يمثل الموقع الجغرافي المختار',
                  ),
                  verticalSpace(20),
                  personalProfileInfoTile(
                    context: context,
                    title: 'Phone number',
                    subtitle: '+963958789524',
                  ),
                  verticalSpace(20),
                  personalProfileInfoTile(
                    context: context,
                    title: 'E-mail',
                    subtitle: 'courtname@gmail.com',
                  ),
                  verticalSpace(20),
                  personalProfileInfoTile(
                    context: context,
                    title: 'Password',
                    subtitle: 'تغيير كلمة المرور',
                  ),
                  verticalSpace(20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container personalProfileViewAs(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.secondary,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25.w,
          vertical: 13.h,
        ),
        child: Row(
          children: [
            const Icon(
              Icons.visibility,
              color: ColorsManager.primary,
            ),
            horizontalSpace(10),
            Text(
              context.tr('View as user'),
              style: TextStyles.primaryRegular14,
            ),
          ],
        ),
      ),
    );
  }

  Row personalProfileHeader() {
    return Row(
      children: [
        CircleAvatar(
          radius: 50.r,
          backgroundImage: const NetworkImage('https://picsum.photos/200'),
          child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorsManager.white,
                  boxShadow: [
                    BoxShadow(
                      color: ColorsManager.grey,
                      blurRadius: 5.r,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 15.r,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.edit, size: 12),
                ),
              )),
        ),
        horizontalSpace(16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'اسم الملكية',
                  style: TextStyles.primaryTextBold20,
                ),
                horizontalSpace(6),
                Icon(
                  Icons.edit,
                  size: 16.sp,
                ),
              ],
            ),
            Text(
              'ملعب كرة قدم',
              style: TextStyles.secondaryTextBold16,
            ),
          ],
        ),
        const Spacer(),
      ],
    );
  }

  Column personalProfileInfoTile({
    required BuildContext context,
    required String title,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr(
            title,
          ),
          style: TextStyles.secondaryTextRegular12,
        ),
        verticalSpace(8),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(
                color: ColorsManager.grey,
                blurRadius: 20.r,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 13.h,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    context.tr(subtitle),
                    style: TextStyles.primaryTextRegular12,
                  ),
                ),
                Icon(
                  Icons.edit,
                  color: ColorsManager.primaryText,
                  size: 22.sp,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
