import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_swiftchat/pages/chat/widgets/chatbubble.dart';

class chatpage extends StatelessWidget {
  const chatpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leadingWidth: 30,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/Images/boy_pic.png"),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("FavAbdoh", style: TextStyle(fontSize: 16)),
                Text("Online", style: Theme.of(context).textTheme.labelMedium),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12.0),
              children: [
                ChatBubble(
                  message: "message message message vv message",
                  time: "10:10 AM",
                  status: "reed",
                  isComming: true,
                  imageURL: "assets/Images/chatStatus.png",
                ),
                ChatBubble(
                  message: "message message message vv message",
                  time: "10:10 AM",
                  status: "reed",
                  isComming: false,
                  imageURL: "",
                ),
                ChatBubble(
                  message: "this omy massage and attached image",
                  time: "10:10 AM",
                  status: "reed",
                  isComming: false,
                  imageURL: "assets/Images/girl_pic.png",
                ),
                ChatBubble(
                  message: "message message message vv message",
                  time: "10:10 AM",
                  status: "reed",
                  isComming: true,
                  imageURL: "assets/Images/download.jpeg",
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 8,
              bottom: 30,
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF2D3440),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.mic, color: Colors.grey[400], size: 26),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                        hintText: "Type here...",
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                        ),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.transparent,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.image_outlined,
                    color: Colors.grey[400],
                    size: 26,
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    Icons.send_rounded,
                    color: Colors.grey[400],
                    size: 28,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}