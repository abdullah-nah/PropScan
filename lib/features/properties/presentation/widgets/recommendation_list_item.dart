import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/features/properties/presentation/widgets/property_image.dart';
import 'package:prop_scan/features/properties/presentation/widgets/recommended_property_details.dart';

class RecommendationListItem extends StatelessWidget {
  const RecommendationListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Material(
        elevation: 0.05,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(6),
            child: Row(
              children: [
                Expanded(child: PropertyImage(aspectRatio: 1, bottomMargin: 0)),
                HorizontalSpace(20),
                Expanded(flex: 3, child: RecommendedPropertyDetails()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
