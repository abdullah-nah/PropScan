import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/features/properties/presentation/widgets/bookmark_icon_button.dart';
import 'package:prop_scan/features/properties/presentation/widgets/property_bath_and_bed_rooms.dart';
import 'package:prop_scan/features/properties/presentation/widgets/property_image.dart';

class PropertyImageWithDetails extends StatelessWidget {
  const PropertyImageWithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        PropertyImage(aspectRatio: 1 / 0.85),
        Positioned(top: 0 + 12, right: 0 + 12, child: BookmarkIconButton()),
        Positioned(
          bottom: 0 + 12,
          left: 0 + 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResponsiveText(
                'Dreamsville House',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppPalette.white,
                ),
              ),
              ResponsiveText(
                'JL Sultan Iskandar Moda, Jakarta Solatan',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppPalette.grey,
                ),
              ),
              VerticalSpace(16),
              PropertyBathAndBedRooms(numberOfBathroom: 5, numberOfBedroom: 5),
              VerticalSpace(8),
            ],
          ),
        ),
      ],
    );
  }
}
