import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:readmore/readmore.dart';

class PropertyDescriptionSection extends StatefulWidget {
  const PropertyDescriptionSection({super.key});

  @override
  State<PropertyDescriptionSection> createState() =>
      _PropertyDescriptionSectionState();
}

class _PropertyDescriptionSectionState
    extends State<PropertyDescriptionSection> {
  final _isCollapsed = ValueNotifier<bool>(true);

  @override
  void dispose() {
    _isCollapsed.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ResponsiveText(
          'Description',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const VerticalSpace(8),
        GestureDetector(
          onTap: () {
            setState(() {
              _isCollapsed.value = !_isCollapsed.value;
            });
          },
          child: ReadMoreText(
            "The three level house that has a modern design, has a large pool and a garage that fits up to four cars The three level house that has a modern design, has a large pool and a garage that fits up to four cars The three level house that has a modern design, has a large pool and a garage that fits up to four cars The three level house that has a modern design, has a large pool and a garage that fits up to four cars",
            style: TextStyle(
              color: AppPalette.grey,
              fontSize: ResponsiveText.getResponsiveFontSize(14),
            ),
            trimMode: TrimMode.Line,
            trimLines: 2,
            trimExpandedText: '',
            isCollapsed: _isCollapsed,
          ),
        ),
      ],
    );
  }
}
