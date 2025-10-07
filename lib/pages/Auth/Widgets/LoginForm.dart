// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graduation_swiftchat/widgets/PrimaryButton.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(Icons.alternate_email_rounded),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(Icons.password_outlined),
            ),
            obscureText: true,
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryButton(
                onTap: () {
                  Get.offAllNamed('/homePage');
                },
                butName: "LOGIN",
                butIcon: Icons.lock_open_sharp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
