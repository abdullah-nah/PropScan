import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/features/properties/presentation/widgets/property_description_section.dart';
import 'package:prop_scan/features/properties/presentation/widgets/property_image_with_details.dart';
import 'package:prop_scan/features/properties/presentation/widgets/property_owner_section.dart';

class PropertyDetailsScreenBody extends StatelessWidget {
  const PropertyDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpace(16),
          PropertyImageWithDetails(),
          VerticalSpace(4),
          PropertyDescriptionSection(),
          VerticalSpace(16),
          PropertyOwnerSection(),
        ],
      ),
    );
  }
}
