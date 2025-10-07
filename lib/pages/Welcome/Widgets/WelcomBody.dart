// ignore_for_file: deprecated_member_use, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:graduation_swiftchat/config/images.dart';
import 'package:graduation_swiftchat/config/srtings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsImage.boyPic),
            SvgPicture.asset(AssetsImage.connectSVG),
            Image.asset(AssetsImage.girlPic),
          ],
        ),
        SizedBox(height: 30),
        Text(
          WelcomePageStrings.nowYourAre,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 10),
        Text(
          WelcomePageStrings.connected,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(height: 30),
        Text(
          WelcomePageStrings.discription,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
