import 'package:flutter/material.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        verticalSpace(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool isValid) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.secondaryText,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.secondaryTextLight12.copyWith(
            decoration: isValid ? TextDecoration.lineThrough : null,
            decorationColor: ColorsManager.primary,
            decorationThickness: 2,
            color: isValid
                ? ColorsManager.secondaryText
                : ColorsManager.primaryText,
          ),
        )
      ],
    );
  }
}
