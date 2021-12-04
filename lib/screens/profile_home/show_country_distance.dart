import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';

class ShowCountryDistance extends StatelessWidget {
  const ShowCountryDistance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                "Distance (Km)",
                style: TextStyle(
                    color: black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 10),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "100 Km",
                    style: TextStyle(color: black),
                  ),
                ),
                Divider(
                  color: black.withOpacity(0.3),
                  height: 20,
                  thickness: 2,
                ),
                Container(
                  child: Text(
                    "Whole Country",
                    style: TextStyle(color: black),
                  ),
                ),
                Divider(
                  color: black.withOpacity(0.2),
                  height: 20,
                  thickness: 2,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileHomeScreen()));
            },
            child: Center(
              child: Material(
                elevation: 10,
                color: backgroundColorr,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 180,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Apply",
                      style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
