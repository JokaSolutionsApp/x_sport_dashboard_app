import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/keyboard_dismiss_ontap.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/floor_pricing_widget.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class CourtPricingScreen extends StatelessWidget {
  const CourtPricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: KeyboardDismissOnTap(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w),
          child: CustomScrollView(
            slivers: [
              buildHeader(),
              buildListView(),
              buildButton(context),
            ],
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter buildButton(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          verticalSpace(20),
          AppTextButton(
            text: 'next',
            textStyle: TextStyles.whiteRegular20,
            onPressed: () => context.pushNamed(
              Routes.workingTimesScreen,
            ),
          ),
          verticalSpace(25),
        ],
      ),
    );
  }

  SliverList buildListView() {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return FloorPricingWidget(
          index: index,
        );
      },
    );
  }

  SliverToBoxAdapter buildHeader() {
    return const SliverToBoxAdapter(
      child: Column(
        children: [
          LogoTranslationHeader(
            backButton: true,
          ),
          StepText(
            stepNumber: '3-2: ',
            stepTitle: 'set_reservation_price',
          ),
        ],
      ),
    );
  }
}
