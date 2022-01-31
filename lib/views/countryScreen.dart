// ignore_for_file: prefer_const_constructors

import 'package:covid_app/utils/globals.dart';
import 'package:covid_app/views/countryDetail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:searchfield/searchfield.dart';

class CountryScreen extends StatefulWidget {
  @override
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  List<String> _statesOfIndia = [
    'United States',
    'America',
    'Washington',
    'India',
    'Paris',
    'Jakarta',
    'Australia',
    'Lorem Ipsum',
    'Paris',
    'Jakarta',
    'Australia',
    'Lorem Ipsum',
    'Paris',
    'Jakarta',
    'Australia',
    'Lorem Ipsum',
    'Paris',
    'Jakarta',
    'Australia',
    'Lorem Ipsum',
    'Paris',
    'Jakarta',
    'Australia',
    'Lorem Ipsum'
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: mainBox,
        appBar: myAppBar("Countries", false),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: SearchField(
                  marginColor: greyFontlarge,
                  suggestionStyle:
                      TextStyle(color: greyFontlarge, fontSize: 10),
                  suggestionsDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: mainBlack,
                  ),
                  suggestions: _statesOfIndia,
                  searchStyle: TextStyle(color: greyFontlarge, fontSize: 12),
                  hasOverlay: false,
                  validator: (x) {
                    if (!_statesOfIndia.contains(x) || x!.isEmpty) {
                      return 'Please Enter a valid State';
                    }
                    return null;
                  },
                  searchInputDecoration: InputDecoration(
                    focusColor: mainBlack,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyFontlarge, width: 1),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: greyFontlarge, width: 1),
                    ),
                    filled: true,
                    fillColor: mainBox,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: greyFontlarge, fontSize: 12),
                  ),
                  maxSuggestionsInViewPort: 2,
                  itemHeight: 40,
                ),
              ),
              ListView.builder(
                itemCount: 12,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CountryDetail(mainText: _statesOfIndia[index],)),
                          );
                        },
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          title: Text(
                            _statesOfIndia[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          subtitle: Text(
                            "Cases: 1345532",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                fontStyle: FontStyle.italic),
                          ),
                          trailing: Icon(FontAwesomeIcons.chevronRight),
                          tileColor: Colors.white,
                        ),
                      ));
                },
              ),
            ],
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
