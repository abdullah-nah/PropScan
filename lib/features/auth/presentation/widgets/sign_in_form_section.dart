import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/custom_text_field.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/features/auth/presentation/widgets/auth_submit_button.dart';

class SignInFormSection extends StatelessWidget {
  const SignInFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          ResponsiveText(
            'Welcome back',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          VerticalSpace(4),
          ResponsiveText(
            'Please enter your email and password to access your account',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: AppPalette.grey,
              fontStyle: FontStyle.italic,
            ),
          ),
          VerticalSpace(8),
          CustomTextField(
            type: TextFieldType.email,
            textInputAction: TextInputAction.next,
          ),
          VerticalSpace(8),
          CustomTextField(
            type: TextFieldType.password,
            textInputAction: TextInputAction.go,
          ),
          VerticalSpace(24),
          AuthSubmitButton(text: 'Sign In'),
        ],
      ),
    );
  }
}
