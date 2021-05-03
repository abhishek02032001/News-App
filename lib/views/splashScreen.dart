import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/views/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 50.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/splashIcon.png"),
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(height: 50.0),
              Text(
                "Apna Wala News",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30.0),
              CircularProgressIndicator(
                backgroundColor: Colors.blue[50],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
