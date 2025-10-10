// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:graduation_swiftchat/pages/Auth/AuthPage.dart';
import 'package:graduation_swiftchat/pages/HomePage/HomePage.dart';
import 'package:graduation_swiftchat/pages/chat/chatPage.dart';
import 'package:graduation_swiftchat/pages/UserProfile/profilepage.dart';
import 'package:graduation_swiftchat/pages/UserProfile/update_profile.dart';
var pagePath=[
  GetPage(
    name: "/authPage",
    page: () => AuthPage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/homePage",
    page: () => HomePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/chatpage",
    page: () => chatpage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/Profilepage",
    page: () => UserProfilePage(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
    name: "/updateProfilePage",
    page: () => UpdateUserProfile(),
    transition: Transition.rightToLeft,
  ),
];