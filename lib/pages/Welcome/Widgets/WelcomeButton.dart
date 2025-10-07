// ignore_for_file: deprecated_member_use, depend_on_referenced_packages, file_names
import 'package:flutter/material.dart';
import 'package:graduation_swiftchat/config/images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:graduation_swiftchat/config/srtings.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      onSubmit: () {},
      sliderButtonIcon: SizedBox(
        height: 25,
        width: 25,
        child: SvgPicture.asset(AssetsImage.plugSVG, width: 25),
      ),
      text: WelcomePageStrings.slideToStart,
      textStyle: Theme.of(context).textTheme.labelLarge,

      animationDuration: Duration(milliseconds: 300),
      submittedIcon: SvgPicture.asset(AssetsImage.connectSVG, width: 25),
      innerColor: Theme.of(context).colorScheme.primary,
      outerColor: Theme.of(context).colorScheme.primaryContainer,
    );
  }
}
