import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MoreHeightScreen extends StatefulWidget {
  const MoreHeightScreen({Key? key}) : super(key: key);

  @override
  _MoreHeightScreenState createState() => _MoreHeightScreenState();
}

class _MoreHeightScreenState extends State<MoreHeightScreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Container(
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
                  "Height",
                  style: TextStyle(
                      color: black, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "How tall should they be?",
                  style: TextStyle(color: black.withOpacity(0.4), fontSize: 16),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80, left: 10),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 130,
                        child: Divider(
                          color: black.withOpacity(0.2),
                          height: 20,
                          thickness: 2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "No minimum",
                          style:
                              TextStyle(color: backgroundColorr, fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 140,
                        child: Divider(
                          color: black.withOpacity(0.2),
                          height: 20,
                          thickness: 2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "19",
                          style: TextStyle(color: black),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80, right: 20),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 130,
                        child: Divider(
                          color: black.withOpacity(0.2),
                          height: 20,
                          thickness: 2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "No maximum",
                          style:
                              TextStyle(color: backgroundColorr, fontSize: 12),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 140,
                        child: Divider(
                          color: black.withOpacity(0.2),
                          height: 20,
                          thickness: 2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "23",
                          style: TextStyle(color: black),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20, left: 20),
                  child: FlutterSwitch(
                    activeColor: backgroundColorr,
                    width: 50.0,
                    height: 20.0,
                    valueFontSize: 20.0,
                    toggleSize: 20.0,
                    value: status,
                    borderRadius: 30.0,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "See other people if I run out",
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, left: 10),
                      child: Text(
                        "Well show you who else is out there",
                        style: TextStyle(
                            color: black.withOpacity(0.4), fontSize: 14),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileHomeScreen()));
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
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
