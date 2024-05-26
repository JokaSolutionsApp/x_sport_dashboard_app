import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/assets_managers/assets.gen.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';

class ImageCollectionPlaceholder extends StatelessWidget {
  const ImageCollectionPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [4, 4],
      color: ColorsManager.fieldBorder,
      borderType: BorderType.RRect,
      radius: Radius.circular(12.r),
      padding: const EdgeInsets.all(6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: AssetsManager.images.propertyCreation.imagePlaceholder
                  .image(),
            ),
            GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return AssetsManager.images.propertyCreation.imagePlaceholder
                    .image(
                  fit: BoxFit.cover,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
