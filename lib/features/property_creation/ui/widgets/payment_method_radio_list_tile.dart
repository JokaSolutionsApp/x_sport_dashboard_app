import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class PaymentMethodRadioListTile extends StatelessWidget {
  final String text;
  final Image image;
  final bool value;
  final bool? groupValue;
  final void Function(bool?)? onChanged;
  const PaymentMethodRadioListTile({
    super.key,
    required this.text,
    required this.image,
    required this.value,
    this.groupValue,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: RadioListTile(
        activeColor: ColorsManager.primary,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: ColorsManager.fieldBorder,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
        title: Row(
          children: [
            Text(
              text,
              style: TextStyles.primaryTextMedium18,
            ),
            const Spacer(),
            image,
          ],
        ),
        groupValue: groupValue,
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
