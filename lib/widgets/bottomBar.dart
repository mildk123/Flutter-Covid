import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rolling_nav_bar/rolling_nav_bar.dart';
import 'package:sizer/sizer.dart';

import '../utils/globals.dart';
import '../views/HomeScreen.dart';
import '../views/aboutScreen.dart';
import '../views/countryScreen.dart';

class MyBottomBar extends StatefulWidget {
  int current = 0;

  @override
  BottomBarState createState() => BottomBarState();
}

class BottomBarState extends State<MyBottomBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  DateTime? currentBackPressTime;
  int _currentIndex = 0;

  var iconData = <IconData>[
    FontAwesomeIcons.home,
    FontAwesomeIcons.globeAsia,
    FontAwesomeIcons.userAlt,
  ];

  void openDrawerOurs() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Material(
        elevation: 20,
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: mainBox,
          bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: mainBlack,
                boxShadow: [
                  BoxShadow(
                    color: mainBlack,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              height: 8.h,
              width: MediaQuery.of(context).size.width,
              // Option 1: Recommended
              child: RollingNavBar.iconData(
                navBarDecoration: BoxDecoration(
                  color: mainBlack,
                ),
                onTap: (value) {
                  HapticFeedback.lightImpact();
                  setState(() {
                    _currentIndex = value;
                  });
                },
                activeIndex: _currentIndex,
                animationCurve: Curves.bounceIn,
                animationType: AnimationType.roll,
                baseAnimationSpeed: 200,
                activeIconColors: <Color>[Colors.white],
                iconData: iconData,
                iconColors: <Color>[mainRed],
                indicatorColors: <Color>[mainRed],
                iconSize: 13.sp,
                indicatorRadius: 19.sp,
                indicatorSides: 6,
              )),
          body: WillPopScope(
            child: (_currentIndex == 0)
                ? HomeScreen()
                : (_currentIndex == 1)
                    ? CountryScreen()
                    : About(),
            onWillPop: () async {
              bool backStatus = onWillPop();
              if (backStatus && _currentIndex == 0) {
                exit(0);
              }
              return false;
            },
          ),
        ),
      );
    });
  }

  onWillPop() {
    setState(() {
      _currentIndex = 0;
    });
    if (_scaffoldKey.currentState!.isEndDrawerOpen) {
      Navigator.of(context).pop();
      return false;
    }

    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        backgroundColor: Colors.black,
        textColor: Colors.white,
      );

      return false;
    } else {
      return true;
    }
  }
}
