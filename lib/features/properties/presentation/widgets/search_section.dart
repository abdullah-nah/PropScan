import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/features/properties/presentation/widgets/location_button.dart';
import 'package:prop_scan/features/properties/presentation/widgets/search_text_field.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {    
    return Row(
      children: [
        Expanded(flex: 5, child: SearchTextField()),
        HorizontalSpace(8),
        Expanded(flex: 1, child: LocationButton()),
      ],
    );
  }
}
