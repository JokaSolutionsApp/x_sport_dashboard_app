import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/helpers/extensions.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/routing/routes.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';
import 'package:x_sport_dashboard_app/core/widgets/app_text_button.dart';
import 'package:x_sport_dashboard_app/core/widgets/logo_translation_header.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/floor_card.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/new_floor.dart';
import 'package:x_sport_dashboard_app/features/property_creation/ui/widgets/step_text.dart';

class PropertyCourtInfoScreen extends StatelessWidget {
  const PropertyCourtInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.w),
        child: CustomScrollView(
          slivers: [
            buildHeader(),
            buildListView(),
            buildButton(context),
          ],
        ),
      ),
    );
  }

  SliverList buildListView() {
    return SliverList.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        //last item in list
        if (index == 1) {
          return const NewFloor();
        }
        return const FloorCard();
      },
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
              Routes.courtAminitesScreen,
            ),
          ),
          verticalSpace(25),
        ],
      ),
    );
  }

  SliverToBoxAdapter buildHeader() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const LogoTranslationHeader(
            backButton: true,
          ),
          const StepText(
            stepNumber: '1-6: ',
            stepTitle: 'Enter court information',
          ),
          verticalSpace(27),
        ],
      ),
    );
  }
}
