import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class StepText extends StatelessWidget {
  final String stepNumber;
  final String stepTitle;
  const StepText({
    super.key,
    required this.stepNumber,
    required this.stepTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: context.tr('step'),
              style: TextStyles.primaryTextBold20,
            ),
            TextSpan(
              text: context.tr(stepNumber),
              style: TextStyles.primaryTextBold20,
            ),
            TextSpan(
              text: context.tr(
                stepTitle,
              ),
              style: TextStyles.primaryTextRegular20,
            ),
          ],
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
