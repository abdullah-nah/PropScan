import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/logo.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_gradients.dart';
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
        height: SizeConfig.height * .31,
        width: SizeConfig.width,
        decoration: BoxDecoration(gradient: AppGradients.lightGradient),
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
