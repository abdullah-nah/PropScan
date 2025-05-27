import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';

class DrawerItem extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final String text;
  const DrawerItem({
    super.key,
    required this.isSelected,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 4, bottom: 4),
        margin: EdgeInsets.only(
          right: SizeConfig.width * .24,
          top: 8,
          bottom: 8,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: isSelected ? AppPalette.kColor1 : AppPalette.white,
            ),
            const HorizontalSpace(12),
            ResponsiveText(
              text,
              style: TextStyle(
                fontSize: 18,
                color: isSelected ? AppPalette.kColor1 : AppPalette.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
