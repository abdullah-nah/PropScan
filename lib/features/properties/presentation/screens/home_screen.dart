import 'package:flutter/material.dart';
import 'package:prop_scan/features/properties/presentation/widgets/home_screen_app_bar.dart';
import 'package:prop_scan/features/properties/presentation/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: HomeScreenAppBar(), body: HomeScreenBody());
  }
}
