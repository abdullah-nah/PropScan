import 'package:flutter/material.dart';
import 'package:prop_scan/core/utils/size_config.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  const ResponsiveText(this.text, {super.key, this.style, this.textAlign, this.maxLines, this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
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
