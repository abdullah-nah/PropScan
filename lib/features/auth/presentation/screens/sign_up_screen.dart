import 'package:flutter/material.dart';
import 'package:prop_scan/features/auth/presentation/widgets/sign_up_screen_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: SingleChildScrollView(child: SignUpScreenBody())),
    );
  }
}
