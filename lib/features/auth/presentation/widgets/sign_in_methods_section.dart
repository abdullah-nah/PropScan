import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/utils/app_assets.dart';
import 'package:prop_scan/core/utils/size_config.dart';
import 'package:prop_scan/features/auth/presentation/widgets/auth_have_an_account.dart';
import 'package:prop_scan/features/auth/presentation/widgets/custom_divider.dart';
import 'package:prop_scan/features/auth/presentation/widgets/sign_in_with_item.dart';

class SignInMethodsSection extends StatelessWidget {
  const SignInMethodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AuthHaveAnAccount(),
          VerticalSpace(8),
          CustomDivider(),
          VerticalSpace(22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SignInWithItem(
                image: Assets.assetsImagesGoogle,
                size: SizeConfig.width * .04,
                onTap: () {},
              ),
              SignInWithItem(
                image: Assets.assetsImagesFacebook,
                size: SizeConfig.width * .04,
                onTap: () {},
              ),
              SignInWithItem(
                image: Assets.assetsImagesMicrosoft,
                size: SizeConfig.width * .035,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
