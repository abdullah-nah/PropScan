import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/images_dialog.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/utils/size_config.dart';
import 'package:prop_scan/features/properties/presentation/widgets/property_image.dart';

class PropertyGallerySection extends StatelessWidget {
  final List<String> images;
  const PropertyGallerySection({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (SizeConfig.height - 80) * (2.2 / 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ResponsiveText(
            'Gallery',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const VerticalSpace(8),
          Expanded(
            child: ListView.separated(
              itemBuilder:
                  (context, index) => GestureDetector(
                    onTap: () {
                      ImagesDialog(
                        initialImage: index,
                        images: images,
                      ).showImagesDialog(context);
                    },
                    child: const PropertyImage(bottomMargin: 0),
                  ),
              separatorBuilder: (context, index) => const HorizontalSpace(6),
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
