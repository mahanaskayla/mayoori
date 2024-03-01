// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayoori/constents/constants.dart';
import 'package:mayoori/screens/favourite/favourite_screen.dart';
import 'package:mayoori/screens/home_screen/home_screen.dart';
import 'package:mayoori/screens/profile/profile_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigationBarScreen> {
  int _page = 0;
  int selectedIcon = 0;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    List screens = [FavouriteScreen(), HomeScreen(), ProfileScreen()];

    return Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: CurvedNavigationBar(
          height: 55,
          color: primaryColor,
          backgroundColor: Colors.white,
          key: _bottomNavigationKey,
          items: [
            CurvedNavigationBarItem(
                child: _page == 0
                    ? Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      )
                    : Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                label: 'FAVORITE',
                labelStyle:
                    GoogleFonts.yaldevi(color: Colors.white, fontSize: 10)),
            CurvedNavigationBarItem(
                child: _page == 1
                    ? Image.asset(
                        'images/Home.png',
                        height: 30,
                        width: 30,
                      )
                    : Icon(
                        Icons.home_filled,
                        color: Colors.white,
                      ),
                label: 'HOME',
                labelStyle:
                    GoogleFonts.yaldevi(color: Colors.white, fontSize: 10)),
            CurvedNavigationBarItem(
                child: _page == 2
                    ? Image.asset(
                        'images/Change User.png',
                        height: 40,
                        width: 30,
                      )
                    : Icon(
                        Icons.person_pin,
                        color: Colors.white,
                      ),
                label: 'PROFILE',
                labelStyle:
                    GoogleFonts.yaldevi(color: Colors.white, fontSize: 10)),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: screens[_page]);
  }
}
