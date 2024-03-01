// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;

  const CustomContainer({
    Key? key,
    required this.child,
    required this.color,
    this.borderRadius = 9.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 27,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(6), color: color),
      child: child,
    );
  }
}
