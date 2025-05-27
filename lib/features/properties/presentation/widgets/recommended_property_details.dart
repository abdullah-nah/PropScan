import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';

class RecommendedPropertyDetails extends StatelessWidget {
  const RecommendedPropertyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveText(
          'Orchad House',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        VerticalSpace(6),
        ResponsiveText(
          'Rp 2,500,000,000 / Year',
          style: TextStyle(fontSize: 12, color: AppPalette.kColor4),
        ),
        VerticalSpace(6),
        _PropertyBathAndBedRooms(numberOfBathroom: 3, numberOfBedroom: 4),
      ],
    );
  }
}

class _PropertyBathAndBedRooms extends StatelessWidget {
  final int numberOfBathroom;
  final int numberOfBedroom;
  const _PropertyBathAndBedRooms({
    required this.numberOfBathroom,
    required this.numberOfBedroom,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Icon(AppIcons.bedroom, color: AppPalette.grey, size: 20),
            const HorizontalSpace(4),
            ResponsiveText(
              '$numberOfBedroom Bedroom',
              style: const TextStyle(fontSize: 12, color: AppPalette.grey),
            ),
          ],
        ),
        const HorizontalSpace(50),
        Row(
          children: [
            const Icon(AppIcons.bathroom, color: AppPalette.grey, size: 20),
            const HorizontalSpace(4),
            ResponsiveText(
              '$numberOfBathroom Bathroom',
              style: const TextStyle(fontSize: 12, color: AppPalette.grey),
            ),
          ],
        ),
      ],
    );
  }
}
