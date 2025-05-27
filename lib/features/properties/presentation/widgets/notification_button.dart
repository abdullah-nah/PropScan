import 'package:flutter/material.dart';
import 'package:prop_scan/core/style/app_icons.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/core/utils/size_config.dart';

class NotificationButton extends StatelessWidget {
  final int notificationNumber;
  const NotificationButton({super.key, required this.notificationNumber});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(AppIcons.notification, size: SizeConfig.width * .08),
        ),
        Visibility(
          visible: notificationNumber > 0 ? true : false,
          child: Positioned(
            top: 0 + 12,
            right: 0 + 12,
            child: Container(
              width: 12,
              height: 12,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppPalette.kColor6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
