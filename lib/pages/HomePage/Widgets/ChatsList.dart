import 'package:flutter/material.dart';
import 'package:graduation_swiftchat/config/images.dart';
import 'package:graduation_swiftchat/pages/HomePage/Widgets/ChatTile.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatTile(
          imageURL: AssetsImage.boyPic,
          name: "John Smith",
          lastChat: "Hey! Are we still on for today?",
          lastTime: "4:15 PM",
        ),
        ChatTile(
          imageURL: AssetsImage.boyPic,
          name: "John Smith",
          lastChat: "Hey! Are we still on for today?",
          lastTime: "4:15 PM",
        ),
        ChatTile(
          imageURL: AssetsImage.boyPic,
          name: "John Smith",
          lastChat: "Hey! Are we still on for today?",
          lastTime: "4:15 PM",
        ),
        ChatTile(
          imageURL: AssetsImage.boyPic,
          name: "John Smith",
          lastChat: "Hey! Are we still on for today?",
          lastTime: "4:15 PM",
        ),
      ],
    );
  }
}
