import 'package:flutter/material.dart';
import 'package:prop_scan/core/common/widgets/spaces.dart';
import 'package:prop_scan/features/chat/presentation/widgets/all_chats_item.dart';

class AllChatsScreenBody extends StatelessWidget {
  const AllChatsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const AllChatsItem(),
      separatorBuilder: (context, index) => const VerticalSpace(8),
      itemCount: 10,
    );
  }
}
