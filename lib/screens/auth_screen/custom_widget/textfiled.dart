// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayoori/constents/constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData prefixicon;
  final IconData? suffixIcon;

  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.prefixicon,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: -5),
            prefixIcon: prefixicon != null
                ? Icon(
                    prefixicon,
                    size: 20,
                  )
                : null,
            prefixIconColor: Colors.white,
            suffixIcon: suffixIcon != null
                ? Icon(
                    suffixIcon,
                    size: 20,
                  )
                : null,
            suffixIconColor: Colors.white,
            hintText: hintText,
            hintStyle: GoogleFonts.mohave(color: Colors.white, fontSize: 15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22.0),
                borderSide: BorderSide(color: Colors.black)),
            filled: true,
            fillColor: primaryColor),
      ),
    );
  }
}
