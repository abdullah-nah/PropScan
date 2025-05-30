import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/custom_icon_button.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';
import 'package:prop_scan/features/properties/presentation/widgets/search_text_field.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 5, child: SearchTextField()),
        const HorizontalSpace(8),
        Expanded(
          flex: 1,
          child: CustomIconButton(
            icon: Icon(
              AppIcons.myLocation,
              color: AppPalette.white,
              size: SizeConfig.width * .07,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
