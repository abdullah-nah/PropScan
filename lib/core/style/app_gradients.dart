import 'package:flutter/widgets.dart';
import 'package:prop_scan/core/style/app_palette.dart';

abstract final class AppGradients {
  static const kGradient1 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      AppPalette.kColor1,
      AppPalette.kColor2,
      AppPalette.kColor3,
      AppPalette.kColor4,
    ],
  );

  static const kGradient2 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [AppPalette.kColor5, AppPalette.kColor7, AppPalette.kColor9],
  );
}
