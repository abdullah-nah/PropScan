import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';

class AllChatsScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const AllChatsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppPalette.white,
      surfaceTintColor: AppPalette.white,
      title: const _AppBarTitle(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            children: [
              _AppBarActionsButton(icon: AppIcons.search, onTap: () {}),
              const HorizontalSpace(8),
              _AppBarActionsButton(icon: AppIcons.more, onTap: () {}),
            ],
          ),
        ),
      ],
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
          'Hello',
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

class _AppBarActionsButton extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  const _AppBarActionsButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppPalette.grey),
        ),
        child: Icon(icon, color: AppPalette.grey),
      ),
    );
  }
}
