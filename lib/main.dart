// @dart=2.9
import 'package:dating_app/screens/home/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dating App',
        theme: ThemeData(
          primaryColor: Color(0xff00897b),
        ),
        home: SplashScreen());
  }
}
