import 'package:flutter/material.dart';
import 'package:prop_scan/features/auth/presentation/widgets/sign_in_screen_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(body: SingleChildScrollView(child: SignInScreenBody())),
    );
  }
}
