import 'package:flutter/material.dart';
import 'package:prop_scan/core/utils/app_assets.dart';
import 'package:prop_scan/core/utils/size_config.dart';

class Logo extends StatelessWidget {
  final double? size;
  const Logo({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.assetsImagesLogo,
      width: size ?? SizeConfig.height * .15,
      height: size ?? SizeConfig.height * .15,
    );
  }
}
