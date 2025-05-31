import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prop_scan/core/common/widgets/responsive_text.dart';
import 'package:prop_scan/core/router/routes_config.dart';
import 'package:prop_scan/core/style/app_palette.dart';
import 'package:prop_scan/features/chat/presentation/widgets/all_chats_last_message_details.dart';

class AllChatsItem extends StatelessWidget {
  const AllChatsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(AppRoutes.kChatScreen),
      child: const ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: CircleAvatar(
            child: ResponsiveText(
              'A',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
            ),
          ),
        ),
        title: ResponsiveText(
          'Abdullah Al-Nahlawi',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: ResponsiveText(
          'Ok, let me check',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: AppPalette.grey),
        ),
        trailing: AllChatsLastMessageDetails(isUnread: true),
      ),
    );
  }
}
