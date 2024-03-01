import 'package:flutter/material.dart';
import 'package:mayoori/constents/constants.dart';

class SliderContainer extends StatelessWidget {
  const SliderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 138,
      width: 279,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: primaryColor),
      child: child,
    );
  }
}
