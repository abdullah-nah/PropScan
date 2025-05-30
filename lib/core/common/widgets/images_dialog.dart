import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';

class ImagesDialog extends StatefulWidget {
  final List<String> images;
  final int initialImage;
  const ImagesDialog({super.key, required this.images, this.initialImage = 0});

  @override
  State<ImagesDialog> createState() => _ImagesDialogState();

  void showImagesDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      pageBuilder:
          (context, animation, secondaryAnimation) =>
              ImagesDialog(images: images, initialImage: initialImage),
    );
  }
}

class _ImagesDialogState extends State<ImagesDialog> {
  late final PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: widget.initialImage);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppPalette.black.withValues(alpha: .8),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Icon(
            Icons.close,
            color: AppPalette.white,
            size: SizeConfig.width * .08,
          ),
        ),
      ),
      body: PhotoViewGallery.builder(
        itemCount: widget.images.length,
        pageController: _pageController,
        builder:
            (context, index) => PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(widget.images[index]),
              initialScale: PhotoViewComputedScale.contained,
              maxScale: PhotoViewComputedScale.contained * 3,
              minScale: PhotoViewComputedScale.contained,
            ),
        // loadingBuilder: (context, event) {},
        backgroundDecoration: BoxDecoration(
          color: AppPalette.black.withValues(alpha: .8),
          borderRadius: BorderRadius.circular(0),
        ),
      ),
    );
  }
}
