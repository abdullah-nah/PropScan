import 'package:flutter/material.dart';
import 'package:prop_scan/features/chat/presentation/widgets/chat_screen_app_bar.dart';
import 'package:prop_scan/features/chat/presentation/widgets/chat_screen_body.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: ChatScreenAppBar(), body: ChatScreenBody());
  }
}
