// ignore_for_file: deprecated_member_use, depend_on_referenced_packages, file_names
import 'package:flutter/material.dart';
import 'package:graduation_swiftchat/config/images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_swiftchat/config/srtings.dart';

class WelcomeHeading extends StatelessWidget {
  const WelcomeHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AssetsImage.appIconSVG,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                AppString.appName,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
      ],
    );
  }
}
