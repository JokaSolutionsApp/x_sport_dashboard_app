import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/features/offline_reservation/ui/widgets/offline_reservation_card.dart';

class ChooseOfflineReservationUserTypeScreen extends StatelessWidget {
  const ChooseOfflineReservationUserTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr('add_new_reservation'),
          style: TextStyles.primaryTextRegular18,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Column(
              children: [
                verticalSpace(60),
                Text(
                  context.tr('choose_reservation_type'),
                  style: TextStyles.primaryTextBold20,
                ),
                verticalSpace(50),
                OfflineReservationListTile(
                  onTap: () {},
                  title: 'reservation_for_existing_user',
                  subTitle: 'user_info_will_be_retrieved_automatically',
                  leadingIcon: AssetsManager.icons.recurrent.image(
                    width: 25.w,
                    height: 25.w,
                  ),
                ),
                verticalSpace(25),
                OfflineReservationListTile(
                  onTap: () {},
                  title: 'reservation_for_no_account_user',
                  subTitle: 'user_info_will_be_entered_manually',
                  leadingIcon: AssetsManager.icons.once.image(
                    width: 25.w,
                    height: 25.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
