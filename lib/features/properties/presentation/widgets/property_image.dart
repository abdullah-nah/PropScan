import 'package:flutter/material.dart';
import 'package:prop_scan/core/utils/app_assets.dart';

class PropertyImage extends StatelessWidget {
  final double aspectRatio;
  const PropertyImage({super.key, this.aspectRatio = 1});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: aspectRatio,
          child: Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .2),
                  offset: const Offset(0, 6),
                  blurRadius: 6,
                  spreadRadius: 0,
                ),
              ],
              image: const DecorationImage(
                image: AssetImage(Assets.assetsImagesTest),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 1 / 1.5,
          child: Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: .15),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
