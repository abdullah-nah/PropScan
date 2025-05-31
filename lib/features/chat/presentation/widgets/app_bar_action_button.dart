import 'package:flutter/material.dart';
import 'package:prop_scan/core/style/app_palette.dart';

class AppBarActionButton extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  const AppBarActionButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppPalette.grey),
        ),
        child: Icon(icon, color: AppPalette.grey),
      ),
    );
  }
}
