// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mayoori/constents/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? color;
  final double borderRadius;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.color,
    this.borderRadius = 9.0,
    // this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
