import 'package:flutter/material.dart';
import 'package:prop_scan/core/utils/size_config.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle? style;
  const ResponsiveText(this.text, {super.key, this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style?.copyWith(
        fontSize:
            style?.fontSize != null
                ? getResponsiveFontSize(style!.fontSize!)
                : null,
      ),
    );
  }

  static double getResponsiveFontSize(double fontSize) {
    final double scaleFactor = _getScaleFactor();
    final double responsiveFontSize = fontSize * scaleFactor;
    final double lowerLimit = fontSize * 0.8;
    final double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double _getScaleFactor() {
    return SizeConfig.width / 400;
  }
}
