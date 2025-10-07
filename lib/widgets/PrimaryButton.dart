import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String butName;
  final IconData butIcon;
  const PrimaryButton({super.key, required this.butName, required this.butIcon});

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal:40),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(widget.butIcon),

                SizedBox(width: 10),
                Text(widget.butName, style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
          );
  }
}