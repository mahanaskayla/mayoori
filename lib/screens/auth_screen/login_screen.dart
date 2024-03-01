// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayoori/screens/auth_screen/custom_widget/custom_button.dart';
import 'package:mayoori/screens/auth_screen/custom_widget/signup_textfield.dart';
import 'package:mayoori/screens/auth_screen/forgot_password_screen.dart';
import 'package:mayoori/screens/auth_screen/gustmode_screen.dart';
import 'package:mayoori/screens/auth_screen/signup_screen.dart';
import 'package:mayoori/screens/bottomnavigationbar/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Image.asset('images/mayoorilogo.png'),
            ),
            SizedBox(
              height: 50,
            ),
            SignUpTextfield(
              hintText: 'E-mail',
              prefixIcon: Icons.person_4_outlined,
              controller: emailController,
            ),
            SizedBox(
              height: 21,
            ),
            SignUpTextfield(
              controller: passwordController,
              hintText: 'Password',
              prefixIcon: Icons.email_outlined,
            ),
            // CustomTextField(
            //   controller: emailController,
            //   hintText: 'E-mail',
            //   prefixicon: Icons.email_outlined,
            // ),
            // SizedBox(
            //   height: 18,
            // ),
            // CustomTextField(
            //   controller: emailController,
            //   hintText: 'Password',
            //   prefixicon: Icons.lock_open,
            //   suffixIcon: Icons.remove_red_eye,
            // ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgotPasswordScreen(),
                        ));
                  },
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.mohave(fontSize: 9),
                  )),
            ),
            SizedBox(
              height: 26,
            ),
            SizedBox(
              width: 275,
              height: 37,
              child: CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigationBarScreen(),
                      ));
                },
                child: Text(
                  'SIGN IN',
                  style: GoogleFonts.mohave(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create a new account',
                  style: GoogleFonts.mohave(fontSize: 12),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ));
                    },
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.mohave(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GustModeScreen(),
                    ));
              },
              child: Text(
                'Explore Gust mode',
                style: GoogleFonts.mohave(fontSize: 12),
              ),
            ),
            Image.asset(
              'images/google.png',
              height: 37,
            )
          ],
        ),
      ),
    );
  }
}
