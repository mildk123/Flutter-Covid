// ignore_for_file: prefer_const_constructors

import 'package:covid_app/utils/globals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: mainBox,
        appBar: myAppBar("Home", false),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      height: 14.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1,234,56",
                                    style: TextStyle(
                                        fontSize: 48,
                                        color: mainRed,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w100)),
                                Text("Total Cases",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: mainBlack,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 10.h,
                                width: 12.h,
                                child: Image(
                                  image: AssetImage(
                                      "assets/display/hospitalisation.png"),
                                ),
                              )),
                        ],
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 14.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("89,124",
                                    style: TextStyle(
                                        fontSize: 48,
                                        color: mainRed,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w100)),
                                Text("Total Recovered",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: mainBlack,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    )),
                              ],
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 10.h,
                                width: 12.h,
                                child: Image(
                                  image: AssetImage("assets/display/active.png"),
                                ),
                              )),
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 14.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("15,015",
                                  style: TextStyle(
                                      fontSize: 48,
                                      color: mainRed,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w100)),
                              Text("Total Deaths",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: mainBlack,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 10.h,
                              width: 12.h,
                              child: Image(
                                image: AssetImage("assets/display/death.png"),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 5.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text("Total Infection %"),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text("30%"))
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 5.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text("Total Recovery %"),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text("12%"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget myAppBar(String titleText, bool isBack) {
    return AppBar(
      centerTitle: true,
      leading: Icon(
        (isBack) ? FontAwesomeIcons.arrowLeft : FontAwesomeIcons.globeAmericas,
        color: mainRed,
      ),
      backgroundColor: mainBlack,
      title: Text(
        "$titleText",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      actions: [
        Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.white,
            activeTrackColor: mainRed,
            inactiveThumbColor: mainRed,
            inactiveTrackColor: Colors.white),
      ],
    );
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
      });
      print('Switch Button is OFF');
    }
  }
}
