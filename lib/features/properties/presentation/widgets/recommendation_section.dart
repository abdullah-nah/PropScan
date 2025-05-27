import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/features/properties/presentation/widgets/recommendation_list_item.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ResponsiveText(
              'Best for you',
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
        ...List.generate(5, (index) => const RecommendationListItem()),
      ],
    );
  }
}
