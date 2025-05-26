import 'package:flutter/material.dart';
import 'package:prop_scan/core/utils/size_config.dart';

void main() {
  runApp(PropScan());
}

class PropScan extends StatelessWidget {
  const PropScan({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return MaterialApp(debugShowCheckedModeBanner: false, home: Scaffold());
  }
}
