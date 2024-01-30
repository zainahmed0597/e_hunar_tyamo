import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/colors.dart';
import '../../utils/string.dart';
import '../../widgets/home/drawer_list_tile.dart';
import 'dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _homePageKey = GlobalKey();

  final List<IconData> icons = [FontAwesomeIcons.circleUser, FontAwesomeIcons.house, FontAwesomeIcons.bell];

  int page = 1;
  int pageView = 1;
  PageController pageController = PageController(initialPage: 1);

  Widget pageViewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        Container(color: Colors.black),
        const Dashboard(),
        Container(color: Colors.green),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homePageKey,
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(
            logoImg,
            filterQuality: FilterQuality.high,
          ),
        ),
        backgroundColor: white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            _homePageKey.currentState!.openDrawer();
          },
          child: Icon(Icons.menu, color: black),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(Icons.message_outlined),
          ),
        ],
      ),
      drawer: GFDrawer(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
                          child: CircularProfileAvatar(
                            profileImg,
                            backgroundColor: cyan,
                            borderWidth: 2,
                            borderColor: purple,
                            radius: 40,
                            elevation: 20,
                            cacheImage: true,
                            animateFromOldImageOnUrlChange: true,
                            placeHolder: (context, url) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                            onTap: () {
                              pageController.animateToPage(
                                0,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.linear,
                              );
                              Navigator.of(context).pop();
                            },
                            errorWidget: (context, url, error) {
                              return const Icon(
                                Icons.face,
                                size: 80,
                              );
                            },
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userName,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1,
                                ),
                              ),
                              Text(
                                userEmail,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: cyan,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: purple,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: Text(
                          premium,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(color: white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 0,
                child: Column(
                  children: [
                    const Divider(),
                    const SizedBox(height: 8),
                    Column(
                      children: [
                        DrawerWidget(
                          iconName: FontAwesomeIcons.solidCreditCard,
                          titleText: subscription,
                        ),
                        DrawerWidget(iconName: FontAwesomeIcons.gear, titleText: setting),
                        DrawerWidget(
                          iconName: FontAwesomeIcons.circleQuestion,
                          titleText: help,
                        ),
                        DrawerWidget(
                          iconName: FontAwesomeIcons.message,
                          titleText: feedBack,
                        ),
                        DrawerWidget(
                          iconName: FontAwesomeIcons.share,
                          titleText: tellOther,
                        ),
                        DrawerWidget(
                          iconName: FontAwesomeIcons.starHalfStroke,
                          titleText: rateTheApp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Divider(),
                  DrawerWidget(
                    iconName: FontAwesomeIcons.rightFromBracket,
                    titleText: signOut,
                    iconColor: purple,
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        activeIndex: page,
        activeColor: Colors.purple,
        inactiveColor: Colors.grey,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        onTap: (p0) {
          setState(() {
            pageView = p0;
            pageController.animateToPage(p0,
                duration: const Duration(milliseconds: 200), curve: Curves.linear);
          });
        },
      ),
      body: pageViewSection(),
    );
  }
}