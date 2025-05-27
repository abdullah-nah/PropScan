import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';
import 'package:prop_scan/features/properties/presentation/widgets/notification_button.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppPalette.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      actions: [NotificationButton(notificationNumber: 1)],
      title: ListTile(
        contentPadding: EdgeInsets.zero,
        title: ResponsiveText(
          'Location',
          style: TextStyle(color: AppPalette.grey, fontSize: 12),
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResponsiveText(
              'Damascus',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            HorizontalSpace(4),
            Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(AppIcons.arrowDown),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(SizeConfig.width, kToolbarHeight);
}
