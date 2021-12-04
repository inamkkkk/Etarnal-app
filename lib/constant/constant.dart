import 'package:flutter/material.dart';

Color backgroundColorr = Color(0xff00897b);
Color white = Colors.white;
Color black = Colors.black;

TextStyle headerTextStyle() {
  return TextStyle(
    color: backgroundColorr,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
}

TextStyle appBarTextStyle() {
  return TextStyle(
    color: white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}

TextStyle simpleTextStyle() {
  return TextStyle(
    color: white,
    fontSize: 16,
  );
}

TextStyle buttonTextStyle() {
  return TextStyle(
    color: backgroundColorr,
    fontSize: 16,
  );
}

Container buttonContainer(String name) {
  return Container(
    alignment: Alignment.center,
    width: 150,
    height: 60,
    decoration: buttonDecoration(),
    child: Text(
      name,
      style: buttonTextStyle(),
    ),
  );
}

Container loginContainer() {
  return Container(
    alignment: Alignment.center,
    width: 300,
    height: 400,
    decoration: buttonDecoration(),
  );
}

BoxDecoration buttonDecoration() {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          blurRadius: 20.0,
          color: black.withOpacity(0.4),
          offset: Offset(5, 20),
        ),
      ]);
}

BoxDecoration settingDecoration() {
  return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          blurRadius: 20.0,
          color: black.withOpacity(0.4),
          offset: Offset(5, 5),
        ),
        BoxShadow(
          blurRadius: 20.0,
          color: black.withOpacity(0.4),
          offset: Offset(5, 5),
        ),
      ]);
}

BoxDecoration createbuttonDecoration(var gradient) {
  return BoxDecoration(
      gradient: gradient,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          blurRadius: 20.0,
          color: black.withOpacity(0.4),
          offset: Offset(5, 5),
        ),
        BoxShadow(
          blurRadius: 20.0,
          color: black.withOpacity(0.4),
          offset: Offset(5, 5),
        ),
      ]);
}

BoxDecoration verificationScreenDecoration() {
  return BoxDecoration(
    color: backgroundColorr.withOpacity(0.5),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
  );
}

BoxDecoration SettingTopSCuteDec() {
  return BoxDecoration(
      color: white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.7),
          blurRadius: 2.0,
          offset: Offset(1, 1),
        ),
        BoxShadow(
          color: Colors.black.withOpacity(0.7),
          blurRadius: 2.0,
          offset: Offset(1, 1),
        ),
      ]);
}

BoxDecoration SettingDownSCuteDec() {
  return BoxDecoration(
      color: white,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.7),
          blurRadius: 2.0,
          offset: Offset(1, 1),
        ),
        BoxShadow(
          color: Colors.black.withOpacity(0.7),
          blurRadius: 2.0,
          offset: Offset(1, 1),
        ),
      ]);
}

BoxDecoration veriBoxDecoration() {
  return BoxDecoration(
      color: white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.7),
          blurRadius: 20.0,
          offset: Offset(5, 10),
        ),
      ]);
}

BoxDecoration profileBoxDecoration(Color color) {
  return BoxDecoration(shape: BoxShape.circle, color: color, boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      blurRadius: 20.0,
      offset: Offset(3, 3),
    ),
  ]);
}
