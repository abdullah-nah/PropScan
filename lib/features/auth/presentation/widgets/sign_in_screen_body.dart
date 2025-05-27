import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/features/auth/presentation/widgets/auth_logo_section.dart';
import 'package:prop_scan/features/auth/presentation/widgets/sign_in_form_section.dart';
import 'package:prop_scan/features/auth/presentation/widgets/sign_in_methods_section.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthLogoSection(),
        const VerticalSpace(16),
        const SignInFormSection(),
        const VerticalSpace(16),
        GestureDetector(
          onTap: () {},
          child: const ResponsiveText(
            'Forgot Password?',
            style: TextStyle(
              color: AppPalette.kColor3,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const VerticalSpace(8),
        const SignInMethodsSection(),
      ],
    );
  }
}
