import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/features/auth/presentation/widgets/auth_logo_section.dart';
import 'package:prop_scan/features/auth/presentation/widgets/sign_in_form_section.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [AuthLogoSection(), VerticalSpace(16), SignInFormSection()],
    );
  }
}
