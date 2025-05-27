import 'package:flutter/material.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';

class BookmarkIconButton extends StatefulWidget {
  const BookmarkIconButton({super.key});

  @override
  State<BookmarkIconButton> createState() => _BookmarkIconButtonState();
}

class _BookmarkIconButtonState extends State<BookmarkIconButton> {
  bool isPropertySaved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPropertySaved = !isPropertySaved;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppPalette.grey.withValues(alpha: .7),
        ),
        child: Icon(
          isPropertySaved ? Icons.bookmark : AppIcons.bookmarkOutline,
          color: AppPalette.white,
        ),
      ),
    );
  }
}
