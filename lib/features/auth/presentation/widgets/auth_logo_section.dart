import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/logo.dart';
import 'package:prop_scan/core/common/responsive_text.dart';
import 'package:prop_scan/core/common/spaces.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';
import 'package:prop_scan/features/auth/presentation/widgets/wave_clipper.dart';

class AuthLogoSection extends StatelessWidget {
  const AuthLogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        height: SizeConfig.height * .35,
        width: SizeConfig.width,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(size: SizeConfig.width * .25),
            VerticalSpace(8),
            ResponsiveText(
              'PropScan',
              style: TextStyle(
                color: AppPalette.white,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            VerticalSpace(32),
          ],
        ),
      ),
    );
  }
}
