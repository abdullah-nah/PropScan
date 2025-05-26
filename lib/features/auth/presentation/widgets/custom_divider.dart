import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/style/app_palette.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider()),
        Container(
          padding: EdgeInsets.all(4),
          margin: const EdgeInsets.symmetric(horizontal: 2),
          decoration: BoxDecoration(
            border: Border.all(color: AppPalette.grey, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ResponsiveText('OR', style: TextStyle(color: AppPalette.grey)),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
