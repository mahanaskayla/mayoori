// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayoori/constents/constants.dart';
import 'package:mayoori/model_class/jwellery_category_model.dart';
import 'package:mayoori/screens/home_screen/custom_widget/custom_container_home.dart';
import 'package:mayoori/screens/home_screen/custom_widget/slider_custom_container.dart';
import 'package:mayoori/screens/home_screen/tab_screens/anklets_screen.dart';
import 'package:mayoori/screens/home_screen/tab_screens/arrival_screen.dart';
import 'package:mayoori/screens/home_screen/tab_screens/bangles_screen.dart';
import 'package:mayoori/screens/home_screen/tab_screens/bracelets_screen.dart';
import 'package:mayoori/screens/home_screen/tab_screens/chain_screen.dart';
import 'package:mayoori/screens/home_screen/tab_screens/earing_screen.dart';
import 'package:mayoori/screens/home_screen/tab_screens/nosepins_Screeb.dart';
import 'package:mayoori/screens/home_screen/tab_screens/ring_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedValue = 0;

  int currentIndex = 0;

  Widget selectedScreen = ArrivalScreen();

  List<JwelleryCategoryModel> jwelleryCategories = [
    JwelleryCategoryModel(
        categoryName: "New arrivals", screen: ArrivalScreen()),
    JwelleryCategoryModel(categoryName: 'Bangils', screen: BangilsScreen()),
    JwelleryCategoryModel(categoryName: 'Rings', screen: RingScreen()),
    JwelleryCategoryModel(categoryName: 'Bracelets', screen: BraceleteScreen()),
    JwelleryCategoryModel(categoryName: 'Chains', screen: ChainScreen()),
    JwelleryCategoryModel(categoryName: 'NosePins', screen: NosePinsScreen()),
    JwelleryCategoryModel(categoryName: 'Earings', screen: EaringScreen()),
    JwelleryCategoryModel(categoryName: 'Anklets', screen: AnkletsScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    List itemsName = [
      '-30% off Rings',
      '-30% off Rings',
      '-30% off Rings',
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Container(
            margin: EdgeInsets.only(left: 15, top: 15),
            height: 45,
            width: 46,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: primaryColor),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/profile.png',
              ),
            )),
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'Vishnu',
            style:
                GoogleFonts.mohave(fontSize: 15, fontWeight: FontWeight.w800),
          ),
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
                SizedBox(
                  width: 10,
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
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 47,
          ),
          ImageSlideshow(
            width: double.infinity,
            height: 138,
            initialPage: 0,
            indicatorColor: Colors.transparent,
            indicatorBackgroundColor: Colors.transparent,
            children: List.generate(
                itemsName.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 33, left: 15),
                      child: Stack(
                          fit: StackFit.expand,
                          clipBehavior: Clip.none,
                          children: [
                            SliderContainer(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 4, top: 19),
                                    child: Text(
                                      itemsName[index],
                                      style: GoogleFonts.shantellSans(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 14),
                                    child: Text(
                                      'Limitted discount for all\n silver rings',
                                      style: GoogleFonts.spaceGrotesk(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 265,
                              child: Image.asset(
                                'images/Luxury_diamond_ring_isolated_on_white_background-removebg-preview.png',
                                height: 130,
                              ),
                            )
                          ]),
                    )).toList(),
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            autoPlayInterval: 4000,
            isLoop: true,
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: DotsIndicator(
              dotsCount: itemsName.length,
              position: currentIndex,
              decorator: DotsDecorator(
                activeColor: dottedColor,
                color: Colors.grey,
                size: const Size.square(9.0),
                activeSize: const Size(20.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Gold Rate',
                  style: GoogleFonts.yanoneKaffeesatz(fontSize: 16),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Stack(clipBehavior: Clip.none, children: [
                        Container(
                          width: 223,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[gradientColor, primaryColor]),
                              borderRadius: BorderRadius.circular(7)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '21 Feb 2024 ',
                                  style: GoogleFonts.orbitron(
                                      fontSize: 8, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  '₹5,760/6M',
                                  style: GoogleFonts.orbitron(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  'Current gold rate',
                                  style: GoogleFonts.orbitron(
                                      fontSize: 5, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                CustomContainer(
                                  color: Colors.black,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 11, vertical: 2),
                                    child: Text(
                                      'vishnu . p',
                                      style: GoogleFonts.orbitron(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60,
                          left: 140,
                          child: Image.asset(
                            'images/goldcoin.png',
                            height: 60,
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 19.59,
          ),
          Column(
            children: [
              Row(
                children: [
                  // Image.asset('images/equaliser.png',
                  //     height: 21, width: 32),
                  // SizedBox(
                  //   width: 6,
                  // ),
                  Expanded(
                    child: SizedBox(
                      height: 30,
                      child: ListView.separated(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 15),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedValue = index;
                                selectedScreen =
                                    jwelleryCategories[index].screen!;
                              });
                            },
                            child: CustomContainer(
                              color: selectedValue == index
                                  ? primaryColor
                                  : brownColor,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 11, vertical: 1),
                                  child: Text(
                                    jwelleryCategories[index].categoryName ??
                                        '',
                                    style: GoogleFonts.yanoneKaffeesatz(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 6,
                          );
                        },
                        itemCount: jwelleryCategories.length,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: selectedScreen,
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
