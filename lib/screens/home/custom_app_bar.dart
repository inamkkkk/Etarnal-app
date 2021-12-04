import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/edit_profile/profile_home.dart';
import 'package:dating_app/screens/top_picker_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 18, right: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PersonProfileHome()));
            },
            child: Container(
              child: Icon(
                CupertinoIcons.heart_solid,
                size: 50,
                color: black,
              ),
            ),
          ),
          Text(
            "Eternal",
            style: TextStyle(
                color: backgroundColorr,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TopPickerClass()));
              },
              child: Icon(CupertinoIcons.slider_horizontal_3))
        ],
      ),
    );
  }
}
