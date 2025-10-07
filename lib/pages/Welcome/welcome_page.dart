// ignore_for_file: deprecated_member_use, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_swiftchat/config/images.dart';
import 'package:graduation_swiftchat/config/srtings.dart';
import 'package:graduation_swiftchat/pages/Welcome/Widgets/WelcomBody.dart';
import 'package:graduation_swiftchat/pages/Welcome/Widgets/WelcomHeading.dart';
import 'package:graduation_swiftchat/pages/Welcome/Widgets/WelcomeButton.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //SizedBox(height: 30),
              WelcomeHeading(),
              //SizedBox(height: 60),
              WelcomeBody(),
              //SizedBox(height: 60),
              WelcomeButton(),
            ],
          ),
        ),
      ),
    );
  }
}
