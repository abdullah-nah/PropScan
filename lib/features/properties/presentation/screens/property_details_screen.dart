import 'package:flutter/material.dart';
import 'package:prop_scan/features/properties/presentation/widgets/property_details_screen_body.dart';

class PropertyDetailsScreen extends StatelessWidget {
  const PropertyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: PropertyDetailsScreenBody()),
      ),
    );
  }
}
