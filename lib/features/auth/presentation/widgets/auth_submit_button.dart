import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/style/app_gradients.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';

class AuthSubmitButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const AuthSubmitButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      elevation: 6,
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: AppGradients.lightGradient,
        ),
        child: InkWell(
          onTap: () {
            onTap();
          },
          borderRadius: BorderRadius.circular(12),
          child: Container(
            alignment: Alignment.center,
            width: SizeConfig.width,
            height: SizeConfig.height * .07,
            child: ResponsiveText(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppPalette.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
