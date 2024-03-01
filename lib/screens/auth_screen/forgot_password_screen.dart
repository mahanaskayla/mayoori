// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayoori/screens/auth_screen/custom_widget/custom_button.dart';
import 'package:mayoori/screens/auth_screen/custom_widget/signup_textfield.dart';
import 'package:mayoori/screens/auth_screen/login_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 146),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/mayoorilogo.png',
                    height: 118,
                  ),
                ],
              ),
              SizedBox(
                height: 39,
              ),
              Text(
                'Forget Password',
                style: GoogleFonts.newsCycle(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Don’t worry sometimes people can forget too,Enter your email and we will send you a password to reset the lin',
                style: GoogleFonts.mohave(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 23,
              ),
              SignUpTextfield(
                hintText: 'E-mail',
                prefixIcon: Icons.email_outlined,
                controller: emailController,
              ),
              SizedBox(
                height: 33,
              ),
              Center(
                child: SizedBox(
                  width: 275,
                  height: 37,
                  child: CustomElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text(
                      'SUBMIT',
                      style: GoogleFonts.mohave(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
