import 'dart:async';


import '../widgets/bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import 'globals.dart';


class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState()  {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    super.initState();

  }








  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int i = 0;

  @override
  Widget build(BuildContext context) {
    _controller.forward();

    Timer(const Duration(milliseconds: 3000), () {
      if (i++ == 0) {
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
              duration: const Duration(milliseconds: 800),
              type: PageTransitionType.fade,
              child: MyBottomBar(),
            ),
            ModalRoute.withName("")
        );
        HapticFeedback.lightImpact();
      }
    });

    return Scaffold(

      backgroundColor: mainBlack,
      body: Stack(children: [
        Center(
            child: ScaleTransition(
              alignment: Alignment.center,
              scale: Tween(begin: 0.0, end: 0.5).animate(_controller),
              child: Image.asset(
                "assets/display/covid-19.png",
                fit: BoxFit.cover,
              ),
            )),
      ]),
    );
  }
}
