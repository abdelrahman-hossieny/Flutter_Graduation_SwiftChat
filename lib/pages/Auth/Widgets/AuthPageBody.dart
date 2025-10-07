// ignore_for_file: deprecated_member_use, depend_on_referenced_packages, unused_local_variable, unused_import
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:graduation_swiftchat/config/images.dart';
import 'package:graduation_swiftchat/config/srtings.dart';
import 'package:graduation_swiftchat/pages/Auth/Widgets/LoginForm.dart';
import 'package:graduation_swiftchat/pages/Auth/Widgets/SignUpForm.dart';
import 'package:graduation_swiftchat/pages/Welcome/Widgets/WelcomBody.dart';
import 'package:graduation_swiftchat/pages/Welcome/Widgets/WelcomHeading.dart';
import 'package:graduation_swiftchat/pages/Welcome/Widgets/WelcomeButton.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:get/get.dart';

class AuthPageBody extends StatelessWidget {
  const AuthPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = true.obs;
    return Container(
      padding: EdgeInsets.all(20),
      //height: 400,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          isLogin.value = true;
                        },
                        child: Column(
                          children: [
                            Text(
                              "Login",
                              style: isLogin.value
                                  ? Theme.of(context).textTheme.bodyLarge
                                  : Theme.of(context).textTheme.labelLarge,
                            ),
                            SizedBox(height: 5),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              height: 3,
                              width: isLogin.value ? 100 : 0,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          isLogin.value = false;
                        },
                        child: Column(
                          children: [
                            Text(
                              "Signup",
                              style: isLogin.value
                                  ? Theme.of(context).textTheme.labelLarge
                                  : Theme.of(context).textTheme.bodyLarge,
                            ),
                            SizedBox(height: 5),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              height: 3,
                              width: isLogin.value ? 0 : 100,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => isLogin.value ? LoginForm() : SignUpForm(),
                  //() => LoginForm(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
