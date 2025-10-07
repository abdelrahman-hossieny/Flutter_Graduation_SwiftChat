// ignore_for_file: deprecated_member_use, depend_on_referenced_packages, file_names, unused_import
import 'package:flutter/material.dart';
import 'package:graduation_swiftchat/config/images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_swiftchat/config/srtings.dart';
import 'package:graduation_swiftchat/pages/Auth/Widgets/AuthPageBody.dart';
import 'package:graduation_swiftchat/pages/Welcome/Widgets/WelcomHeading.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WelcomeHeading(),
                SizedBox(height: 40),
                AuthPageBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
