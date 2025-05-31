import 'package:flutter/material.dart';
import 'package:prop_scan/features/chat/presentation/widgets/all_chats_screen_app_bar.dart';
import 'package:prop_scan/features/chat/presentation/widgets/all_chats_screen_body.dart';

class AllChatsScreen extends StatelessWidget {
  const AllChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AllChatsScreenAppBar(),
      body: AllChatsScreenBody(),
    );
  }
}
