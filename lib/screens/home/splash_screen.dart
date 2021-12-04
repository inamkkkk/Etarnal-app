import 'dart:async';

import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorr,
      appBar: AppBar(
        backgroundColor: backgroundColorr,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 160,
          ),
          SizedBox(
            width: 150,
            height: 150,
            child: Image.asset("assets/logo.png"),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "ETERNAL",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
