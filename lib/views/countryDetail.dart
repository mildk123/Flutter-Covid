import 'package:covid_app/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class CountryDetail extends StatefulWidget {
  CountryDetail({required this.mainText});

String mainText;


  @override
  _CountryDetailState createState() => _CountryDetailState();
}

class _CountryDetailState extends State<CountryDetail> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: mainBox,
        appBar: myAppBar(widget.mainText, true),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                                Text("10,452",
                                    style: TextStyle(
                                        fontSize: 48,
                                        color: mainRed,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w100)),
                                Text("Active Cases",
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
                                      "assets/display/mask.png"),
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
                                Text("33,424",
                                    style: TextStyle(
                                        fontSize: 48,
                                        color: mainRed,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w100)),
                                Text("Total Unrecovered",
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
                                  image: AssetImage("assets/display/fever.png"),
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
                              Text("3,145",
                                  style: TextStyle(
                                      fontSize: 48,
                                      color: mainRed,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w100)),
                              Text("Critical Cases",
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
                                image: AssetImage("assets/display/no-sick-people.png"),
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
  PreferredSizeWidget myAppBar(String titleText , bool isBack){
    return AppBar(
      centerTitle: true,
      leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(
          (isBack) ?FontAwesomeIcons.arrowLeft:FontAwesomeIcons.globeAmericas,
          color: mainRed,
        ),
      ),
      backgroundColor: mainBlack,
      title:  Text(
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
            activeTrackColor:mainRed,
            inactiveThumbColor:mainRed,
            inactiveTrackColor:Colors.white

        ),
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
