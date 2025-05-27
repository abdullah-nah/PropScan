import 'package:flutter/material.dart';
import 'package:prop_scan/core/utils/app_assets.dart';

class PropertyImage extends StatelessWidget {
  final double aspectRatio;
  final double bottomMargin;
  const PropertyImage({
    super.key,
    this.aspectRatio = 1,
    this.bottomMargin = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: aspectRatio,
          child: Container(
            margin: EdgeInsets.only(bottom: bottomMargin),
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
          aspectRatio: aspectRatio,
          child: Container(
            margin: EdgeInsets.only(bottom: bottomMargin),
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
