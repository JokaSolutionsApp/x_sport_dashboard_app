import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final void Function()? onTap;
  final Icon? icon;
  final Image? image;
  const AppIconButton({
    super.key,
    required this.onTap,
    this.icon,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    if (image != null || icon != null) {
      return InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onTap,
        child: image ?? icon,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
