import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/features/properties/presentation/widgets/property_image.dart';

class NearPropertyItem extends StatelessWidget {
  const NearPropertyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Stack(
        children: [
          PropertyImage(aspectRatio: 1 / 1.5),
          Positioned(top: 0 + 12, right: 0 + 12, child: _Distance()),
          Positioned(bottom: 0 + 24, left: 0 + 12, child: _Address()),
        ],
      ),
    );
  }
}

class _Distance extends StatelessWidget {
  const _Distance();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      decoration: BoxDecoration(
        color: AppPalette.grey.withValues(alpha: .6),
        borderRadius: BorderRadius.circular(32),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(AppIcons.nearby, color: AppPalette.white, size: 16),
          HorizontalSpace(4),
          ResponsiveText(
            '1.5 km',
            style: TextStyle(color: AppPalette.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _Address extends StatelessWidget {
  const _Address();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveText(
          'Dreamsville House',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppPalette.white,
          ),
        ),
        ResponsiveText(
          'JL Sultan Iskandar Moda',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: AppPalette.grey,
          ),
        ),
      ],
    );
  }
}
