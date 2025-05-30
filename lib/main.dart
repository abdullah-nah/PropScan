import 'package:flutter/material.dart';
import 'package:prop_scan/core/router/router_config.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';

void main() {
  runApp(const PropScan());
}

class PropScan extends StatelessWidget {
  const PropScan({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light().copyWith(
          primary: AppPalette.kColor1,
        ),
      ),
    );
  }
}
