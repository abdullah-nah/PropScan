import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prop_scan/core/common/logo.dart';
import 'package:prop_scan/core/common/responsive_text.dart';
import 'package:prop_scan/core/common/spaces.dart';
import 'package:prop_scan/core/router/routes_config.dart';
import 'package:prop_scan/core/style/app_palette.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      context.pushReplacement(AppRoutes.kSignInScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            AppPalette.kColor1,
            AppPalette.kColor2,
            AppPalette.kColor3,
            AppPalette.kColor4,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(),
          VerticalSpace(12),
          ResponsiveText(
            'PropScan',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: AppPalette.white,
            ),
          ),
        ],
      ),
    );
  }
}
