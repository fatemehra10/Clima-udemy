// ignore_for_file: prefer_const_constructors

import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String cityName ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/city_background.jpg"),
              fit: BoxFit.cover),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
            child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 50,
                        color: Colors.white,
                      ))),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: kTextFieldInputDecoration,
                onChanged: (value){
                  cityName = value;
                },
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context , cityName);

                },
                child: Text(
                  "Get Weather",
                  style: kButtonTextStyle,
                ))
          ],
        )),
      ),
    );
  }
}
