import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:x_sport_dashboard_app/core/helpers/spacing.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class VideoPlaceholder extends StatelessWidget {
  const VideoPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [4, 4],
      color: ColorsManager.fieldBorder,
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      padding: const EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: GestureDetector(
          onTap: () {},
          child: Center(
            child: Column(
              children: [
                Text(
                  context.tr('upload_video_optional'),
                  style: TextStyles.secondaryTextLight12,
                ),
                verticalSpace(10),
                Text(
                  '25 mb',
                  style: TextStyles.secondaryTextLight12,
                ),
                verticalSpace(20),
                const Icon(
                  Icons.add,
                  color: ColorsManager.secondaryText,
                ),
                verticalSpace(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
