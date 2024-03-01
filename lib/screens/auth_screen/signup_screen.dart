// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayoori/screens/auth_screen/custom_widget/custom_button.dart';
import 'package:mayoori/screens/auth_screen/custom_widget/signup_textfield.dart';
import 'package:mayoori/screens/auth_screen/login_screen.dart';
import 'package:mayoori/screens/bottomnavigationbar/bottom_navigation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final dobController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 87),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Image.asset(
                  'images/mayoorilogo.png',
                  height: 118,
                ),
              ),
              SizedBox(
                height: 42,
              ),
              Text(
                'Create Your Account',
                style: GoogleFonts.newsCycle(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 14,
              ),
              SignUpTextfield(
                hintText: 'Username',
                prefixIcon: Icons.person_4_outlined,
                controller: usernameController,
              ),
              SizedBox(
                height: 21,
              ),
              SignUpTextfield(
                controller: emailController,
                hintText: 'E-mail',
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(
                height: 21,
              ),
              SignUpTextfield(
                  controller: dobController,
                  hintText: 'dd-mm-yyy',
                  prefixIcon: Icons.calendar_month,
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black)),
                      child: Icon(
                        Icons.add,
                        size: 16.0,
                      ),
                    ),
                  )),
              SizedBox(
                height: 21,
              ),
              SignUpTextfield(
                controller: passwordController,
                hintText: 'Password',
                prefixIcon: Icons.lock_open_outlined,
              ),
              SizedBox(
                height: 21,
              ),
              SignUpTextfield(
                controller: confirmController,
                hintText: 'Confirm Password',
                prefixIcon: Icons.lock_open_outlined,
              ),
              SizedBox(
                height: 33,
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
                    'SIGN UP',
                    style: GoogleFonts.mohave(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'LOG IN WITH',
                style: GoogleFonts.mohave(fontWeight: FontWeight.bold),
              ),
              Image.asset(
                'images/google.png',
                height: 37,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: GoogleFonts.mohave(fontSize: 9),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Text(
                        'SIGN IN',
                        style: GoogleFonts.mohave(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
