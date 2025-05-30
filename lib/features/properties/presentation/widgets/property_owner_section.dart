import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/custom_icon_button.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';

class PropertyOwnerSection extends StatelessWidget {
  const PropertyOwnerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (SizeConfig.height - 80) * (1 / 13),
      child: const Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: CircleAvatar(
              child: ResponsiveText('G', style: TextStyle(fontSize: 28)),
            ),
          ),
          HorizontalSpace(12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResponsiveText(
                'Garry Allen',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              ResponsiveText('Owner', style: TextStyle(color: AppPalette.grey)),
            ],
          ),
          Spacer(),
          _ContactButtons(),
        ],
      ),
    );
  }
}

class _ContactButtons extends StatelessWidget {
  const _ContactButtons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CustomIconButton(
            icon: const Icon(AppIcons.phone, color: AppPalette.white),
            onPressed: () {},
          ),
          const HorizontalSpace(8),
          CustomIconButton(
            icon: const Icon(AppIcons.chat, color: AppPalette.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
