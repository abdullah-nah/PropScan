import 'package:flutter/widgets.dart';
import 'package:prop_scan/core/style/app_palette.dart';

abstract final class AppGradients {
  static const lightGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      AppPalette.kColor1,
      AppPalette.kColor2,
      AppPalette.kColor3,
      AppPalette.kColor4,
    ],
  );
}
