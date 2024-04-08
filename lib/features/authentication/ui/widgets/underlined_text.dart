import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:x_sport_dashboard_app/core/theming/styles.dart';

class UnderlinedText extends StatelessWidget {
  final void Function()? onTap;
  final String? text;
  final String underlinedText;
  const UnderlinedText({
    super.key,
    this.onTap,
    this.text,
    required this.underlinedText,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: context.tr(text ?? ''),
            style: TextStyles.primarySemiBold16,
          ),
          TextSpan(
            text: context.tr(underlinedText),
            style: TextStyles.primaryRegularUnderLined16,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
