import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_swiftchat/config/images.dart';
import 'package:graduation_swiftchat/pages/HomePage/Widgets/ChatTile.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed("/chatpage");
          },
          child: ChatTile(
            imageUrl: AssetsImage.boyPic,
            name: "John Smith",
            lastChat: "Hey! Are we still on for today?",
            lastTime: "4:15 PM",
          ),
        ),
        InkWell(
          onTap: () {
            Get.toNamed("/chatpage");
          },
          child: ChatTile(
            imageUrl: AssetsImage.boyPic,
            name: "Sarah Connor",
            lastChat: "Thanks for the help!",
            lastTime: "2:30 PM",
          ),
        ),
        InkWell(
          onTap: () {
            Get.toNamed("/chatpage");
          },
          child: ChatTile(
            imageUrl: AssetsImage.boyPic,
            name: "Mike Johnson",
            lastChat: "See you tomorrow",
            lastTime: "1:45 PM",
          ),
        ),
        InkWell(
          onTap: () {
            Get.toNamed("/chatpage");
          },
          child: ChatTile(
            imageUrl: AssetsImage.boyPic,
            name: "Emily Davis",
            lastChat: "Got it! 👍",
            lastTime: "Yesterday",
          ),
        ),
      ],
    );
  }
}