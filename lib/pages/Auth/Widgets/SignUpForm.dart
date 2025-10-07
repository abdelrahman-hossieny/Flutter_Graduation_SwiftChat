import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:graduation_swiftchat/widgets/PrimaryButton.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Full Name',
              prefixIcon: Icon(Icons.person),
            ),
          ),
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
              PrimaryButton(butName: "SIGN UP", butIcon: Icons.lock_open_sharp),
            ],
          ),
        ],
      ),
    );
  }
}
