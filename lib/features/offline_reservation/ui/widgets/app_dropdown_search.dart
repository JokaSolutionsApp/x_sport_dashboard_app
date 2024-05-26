import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/colors.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class AppDropdownSearch extends StatelessWidget {
  const AppDropdownSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownSearch(
      dropdownBuilder: (context, selectedItem) {
        return const Text('data');
      },
      dropdownButtonProps: const DropdownButtonProps(
        color: ColorsManager.primary,
      ),
      popupProps: PopupProps.menu(
        showSearchBox: true,
        showSelectedItems: true,
        disabledItemFn: (String s) => s.startsWith('I'),
      ),
      items: const ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
      dropdownDecoratorProps: DropDownDecoratorProps(
        baseStyle: TextStyles.primaryRegular12,
        dropdownSearchDecoration: InputDecoration(
          fillColor: ColorsManager.secondary,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 17.w,
            vertical: 17.h,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: ColorsManager.primary,
          ),
          hintText: context.tr('search_user_account'),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsManager.secondary,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsManager.secondary,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsManager.secondary,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsManager.red,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsManager.red,
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorsManager.secondary,
            ),
          ),
        ),
      ),
      onChanged: print,
      // selectedItem: "Brazil",
    );
  }
}
