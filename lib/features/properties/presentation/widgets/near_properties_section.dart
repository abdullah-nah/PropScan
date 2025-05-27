import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/utils/size_config.dart';
import 'package:prop_scan/features/properties/presentation/widgets/near_property_item.dart';

class NearPropertiesSection extends StatelessWidget {
  const NearPropertiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (SizeConfig.height - kToolbarHeight) * (8 / 17),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ResponsiveText(
                'Near from you',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                ),
                child: const ResponsiveText('see more'),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const NearPropertyItem(),
              separatorBuilder: (context, index) => const HorizontalSpace(12),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
