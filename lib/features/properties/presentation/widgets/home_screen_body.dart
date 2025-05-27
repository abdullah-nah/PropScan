import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/features/properties/presentation/widgets/filter_section.dart';
import 'package:prop_scan/features/properties/presentation/widgets/near_properties_section.dart';
import 'package:prop_scan/features/properties/presentation/widgets/search_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          VerticalSpace(16),
          SearchSection(),
          VerticalSpace(16),
          FilterSection(),
          VerticalSpace(16),
          NearPropertiesSection(),
          VerticalSpace(16),
        ],
      ),
    );
  }
}
