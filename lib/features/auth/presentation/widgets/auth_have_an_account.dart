import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/router/routes_config.dart';
import 'package:prop_scan/core/style/app_palette.dart';

class AuthHaveAnAccount extends StatelessWidget {
  const AuthHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final currentScreen = ModalRoute.of(context)!.settings.name!.toLowerCase();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ResponsiveText(
          currentScreen.contains('in')
              ? "Don't have an account?"
              : "Already have an account?",
        ),
        HorizontalSpace(4),
        TextButton(
          onPressed: () {
            currentScreen.contains('in')
                ? context.push(AppRoutes.kSignUpScreen)
                : context.pop();
          },
          child: ResponsiveText(
            currentScreen.contains("in") ? 'Sign Up' : "Sign In",
            style: const TextStyle(color: AppPalette.kColor4),
          ),
        ),
      ],
    );
  }
}
