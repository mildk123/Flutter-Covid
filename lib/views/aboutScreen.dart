import 'package:covid_app/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          backgroundColor: mainBox,
          appBar: myAppBar("About", false),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: greyFontlarge,
                        ),
                        height: 200,
                        width: 200,
                        padding: const EdgeInsets.all(40),
                        child: Image.asset(
                          "assets/display/covid-19.png",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Milad Khan",
                          style: TextStyle(
                              fontSize: 32,
                              color: Color(0xC0ffffff),
                              fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("mildk123@gmail.com",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xA0ffffff),
                              letterSpacing: 1,
                              fontStyle: FontStyle.italic)),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Built with \u2764	on Flutter ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xA0ffffff),
                        letterSpacing: 1,
                      )),
                  SizedBox(height: 40)
                ],
              ),
            ],
          )),
    );
  }

  PreferredSizeWidget myAppBar(String titleText, bool isBack) {
    return AppBar(
      elevation: 5,
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
}
