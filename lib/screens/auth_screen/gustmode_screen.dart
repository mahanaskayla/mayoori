// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GustModeScreen extends StatelessWidget {
  const GustModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List iconImages = [
      'images/transparency.png',
      'images/deduction.png',
      'images/hallmarked.png'
    ];

    List name = [
      'Complete Transparancy',
      'Zero-Deduction GoldExchange',
      '916  Hallmarked  Pur Gold'
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Image.asset(
            'images/location.png',
            height: 31,
            width: 31,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wandoor',
              style: GoogleFonts.alata(fontSize: 12),
            ),
            Text(
              'Kerala',
              style: GoogleFonts.alata(fontSize: 12),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 15),
            child: Wrap(
              spacing: 4,
              children: [
                Icon(
                  Icons.search,
                  size: 25,
                ),
                Icon(
                  Icons.circle_notifications_outlined,
                  size: 25,
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '      TRENDING NOW',
                  style: GoogleFonts.roboto(fontSize: 16),
                ),
                SizedBox(
                  height: 6,
                ),
                Image.asset(
                  'images/IMG_20240223_102122_737 1.png',
                  fit: BoxFit.fitWidth,
                ),
                Image.asset(
                  'images/IMG_20240223_102217_447 2.png',
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 23,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 5),
                              child: Row(
                                children: [
                                  Image.asset(iconImages[index]),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    name[index],
                                    style:
                                        GoogleFonts.notoKufiArabic(fontSize: 9),
                                  )
                                ],
                              ),
                            ),
                          ));
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 6,
                      );
                    },
                    itemCount: 3,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
