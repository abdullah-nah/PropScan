import 'package:flutter/material.dart';
import 'package:prop_scan/core/style/app_gradients.dart';

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final void Function() onPressed;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            gradient: AppGradients.kGradient1,
            borderRadius: BorderRadius.circular(12),
          ),
          child: icon,
        ),
      ),
    );
  }
}
