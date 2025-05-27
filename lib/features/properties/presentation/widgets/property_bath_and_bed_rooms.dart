import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';

class PropertyBathAndBedRooms extends StatelessWidget {
  final int numberOfBathroom;
  final int numberOfBedroom;
  const PropertyBathAndBedRooms({
    super.key,
    required this.numberOfBathroom,
    required this.numberOfBedroom,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppPalette.grey.withValues(alpha: .5),
              ),
              child: const Icon(
                AppIcons.bedroom,
                color: AppPalette.white,
                size: 22,
              ),
            ),
            const HorizontalSpace(8),
            ResponsiveText(
              '$numberOfBedroom Bedroom',
              style: const TextStyle(
                fontSize: 13,
                color: AppPalette.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const HorizontalSpace(50),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppPalette.grey.withValues(alpha: .5),
              ),
              child: const Icon(
                AppIcons.bathroom,
                color: AppPalette.white,
                size: 22,
              ),
            ),
            const HorizontalSpace(8),
            ResponsiveText(
              '$numberOfBathroom Bathroom',
              style: const TextStyle(
                fontSize: 13,
                color: AppPalette.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
