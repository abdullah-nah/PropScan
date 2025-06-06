import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';
import 'package:prop_scan/features/chat/presentation/widgets/app_bar_action_button.dart';

class AllChatsScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AllChatsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      backgroundColor: AppPalette.white,
      surfaceTintColor: AppPalette.white,
      title: const _AppBarTitle(),
      actions: const [_AppBarActions()],
    );
  }

  @override
  Size get preferredSize => Size(SizeConfig.width, kToolbarHeight);
}

class _AppBarTitle extends StatelessWidget {
  const _AppBarTitle();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveText(
          'Hello,',
          style: TextStyle(fontSize: 12, color: AppPalette.grey),
        ),
        ResponsiveText(
          'Abdullah',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ],
    );
  }
}

class _AppBarActions extends StatelessWidget {
  const _AppBarActions();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        children: [
          AppBarActionButton(icon: AppIcons.search, onTap: () {}),
          const HorizontalSpace(8),
          AppBarActionButton(icon: AppIcons.more, onTap: () {}),
        ],
      ),
    );
  }
}
