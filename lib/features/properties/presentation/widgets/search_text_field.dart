import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/custom_text_field.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      filled: true,
      fillColor: AppPalette.grey.withValues(alpha: .1),
      border: OutlineInputBorder(
        borderSide: const BorderSide(style: BorderStyle.none, width: 0),
        borderRadius: BorderRadius.circular(12),
      ),
      hintText: 'Search address or near you',
      hintStyle: TextStyle(fontSize: ResponsiveText.getResponsiveFontSize(13)),
      prefixIcon: const Icon(AppIcons.search),
    );
  }
}
