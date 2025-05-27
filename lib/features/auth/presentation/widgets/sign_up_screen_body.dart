import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/features/auth/presentation/widgets/auth_have_an_account.dart';
import 'package:prop_scan/features/auth/presentation/widgets/auth_logo_section.dart';
import 'package:prop_scan/features/auth/presentation/widgets/sign_up_form_section.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AuthLogoSection(),
        VerticalSpace(16),
        SignUpFormSection(),
        VerticalSpace(8),
        AuthHaveAnAccount(),
        VerticalSpace(8),
      ],
    );
  }
}
