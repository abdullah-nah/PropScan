import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/logo.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';
import 'package:prop_scan/features/properties/presentation/widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppPalette.kColor3,
      width: SizeConfig.width * .65,
      child: const Column(
        children: [
          VerticalSpace(64),
          _DrawerHeader(),
          VerticalSpace(32),
          DrawerItem(isSelected: true, icon: AppIcons.home, text: 'Home'),
          VerticalSpace(4),
          DrawerItem(isSelected: false, icon: AppIcons.person, text: 'Profile'),
          VerticalSpace(4),
          DrawerItem(isSelected: false, icon: AppIcons.nearby, text: 'Nearby'),
          _DrawerDivider(),
          VerticalSpace(4),
          DrawerItem(
            isSelected: false,
            icon: AppIcons.bookmark,
            text: 'Bookmark',
          ),
          VerticalSpace(4),
          DrawerItem(
            isSelected: false,
            icon: AppIcons.notification,
            text: 'Notification',
          ),
          VerticalSpace(4),
          DrawerItem(isSelected: false, icon: AppIcons.chat, text: 'Message'),
          VerticalSpace(4),
          _DrawerDivider(),
          DrawerItem(
            isSelected: false,
            icon: AppIcons.setting,
            text: 'Setting',
          ),
          VerticalSpace(4),
          DrawerItem(isSelected: false, icon: AppIcons.help, text: 'Help'),
          VerticalSpace(4),
          DrawerItem(isSelected: false, icon: AppIcons.logout, text: 'Logout'),
        ],
      ),
    );
  }
}

class _DrawerDivider extends StatelessWidget {
  const _DrawerDivider();

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppPalette.white,
      thickness: .3,
      endIndent: SizeConfig.width * .15,
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Logo(size: SizeConfig.width * .16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ResponsiveText(
              'Hi Abdullah ✋',
              style: TextStyle(color: AppPalette.white, fontSize: 20),
            ),
            ResponsiveText(
              'Welcome to PropScan',
              style: TextStyle(
                color: AppPalette.grey.withValues(alpha: .8),
                fontSize: 12,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
