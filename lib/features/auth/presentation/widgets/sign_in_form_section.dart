import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prop_scan/core/common/widgets/custom_text_field.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/router/routes_config.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/features/auth/presentation/widgets/auth_submit_button.dart';

class SignInFormSection extends StatelessWidget {
  const SignInFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const ResponsiveText(
            'Welcome back',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const VerticalSpace(4),
          const ResponsiveText(
            'Please enter your email and password to access your account',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: AppPalette.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
          const VerticalSpace(12),
          const CustomTextField(
            type: TextFieldType.email,
            textInputAction: TextInputAction.next,
          ),
          const VerticalSpace(8),
          const CustomTextField(
            type: TextFieldType.password,
            textInputAction: TextInputAction.go,
          ),
          const VerticalSpace(24),
          AuthSubmitButton(
            text: 'Sign In',
            onTap: () {
              context.push(AppRoutes.kHomeScreen);
            },
          ),
        ],
      ),
    );
  }
}
