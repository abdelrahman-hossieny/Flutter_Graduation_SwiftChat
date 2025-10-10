import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_swiftchat/config/images.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final String time;
  final String status; // sent, delivered, seen
  final bool isComming;
  final String? imageURL;

  const ChatBubble({
    super.key,
    required this.message,
    required this.time,
    required this.status,
    required this.isComming,
    this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    String iconPath = AssetsImage.chatStatusSvg;
    Color iconColor = Colors.white;

    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Column(
        crossAxisAlignment:
        isComming ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          // فقاعة الرسالة
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width / 1.5,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16),
                topRight: const Radius.circular(16),
                bottomLeft:
                isComming ? const Radius.circular(0) : const Radius.circular(16),
                bottomRight:
                isComming ? const Radius.circular(16) : const Radius.circular(0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            clipBehavior: Clip.hardEdge, // يخلي الزوايا تطبق على الصورة
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // صورة مرفقة (إن وجدت)
                if (imageURL != null && imageURL!.isNotEmpty)
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageURL!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                // نص الرسالة
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Text(
                    message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      height: 1.3,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 6),

          // الوقت + الحالة
          Row(
            mainAxisAlignment:
            isComming ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              isComming
                  ? Text(
                time,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Colors.grey[400]),
              )
                  : Row(
                children: [
                  Text(
                    time,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: Colors.grey[400]),
                  ),
                  const SizedBox(width: 6),
                  SvgPicture.asset(
                    iconPath,
                    width: 16,
                    height: 16,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
