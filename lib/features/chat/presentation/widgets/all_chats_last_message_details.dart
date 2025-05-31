import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/style/app_palette.dart';

class AllChatsLastMessageDetails extends StatelessWidget {
  final bool isUnread;
  const AllChatsLastMessageDetails({super.key, this.isUnread = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ResponsiveText(
          '02:34 PM',
          style: TextStyle(
            color: isUnread ? AppPalette.kColor1 : AppPalette.grey,
          ),
        ),
        if (isUnread)
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppPalette.kColor1,
            ),
            child: const ResponsiveText(
              '2',
              style: TextStyle(
                color: AppPalette.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
      ],
    );
  }
}
