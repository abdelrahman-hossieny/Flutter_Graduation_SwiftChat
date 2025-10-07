// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:graduation_swiftchat/pages/Auth/AuthPage.dart';
import 'package:graduation_swiftchat/pages/HomePage/HomePage.dart';
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
];