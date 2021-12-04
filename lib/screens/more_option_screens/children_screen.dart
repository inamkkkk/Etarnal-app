import 'package:custom_check_box/custom_check_box.dart';
import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ChildrenScreen extends StatefulWidget {
  const ChildrenScreen({Key? key}) : super(key: key);

  @override
  _ChildrenScreenState createState() => _ChildrenScreenState();
}

class _ChildrenScreenState extends State<ChildrenScreen> {
  bool status = false;
  bool shouldCheck = false;
  bool shouldCheck2 = false;
  bool shouldCheck3 = false;

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
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Children",
                  style: TextStyle(
                      color: black, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Are you looking for someone who has or wants children?",
                  style: TextStyle(color: black.withOpacity(0.4), fontSize: 16),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomCheckBox(
                        value: shouldCheck,
                        shouldShowBorder: true,
                        borderColor: Colors.black,
                        checkedFillColor: backgroundColorr,
                        borderRadius: 8,
                        borderWidth: 1,
                        checkBoxSize: 25,
                        onChanged: (val) {
                          //do your stuff here
                          setState(() {
                            shouldCheck = val;
                          });
                        },
                      ),
                      Text("Would like them someday"),
                    ],
                  ),
                  Divider(
                    color: black.withOpacity(0.3),
                    height: 20,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      CustomCheckBox(
                        value: shouldCheck2,
                        shouldShowBorder: true,
                        borderColor: Colors.black,
                        checkedFillColor: backgroundColorr,
                        borderRadius: 8,
                        borderWidth: 1,
                        checkBoxSize: 25,
                        onChanged: (val) {
                          //do your stuff here
                          setState(() {
                            shouldCheck2 = val;
                          });
                        },
                      ),
                      Text("Already has Children"),
                    ],
                  ),
                  Divider(
                    color: black.withOpacity(0.3),
                    height: 20,
                    thickness: 2,
                  ),
                  Row(
                    children: [
                      CustomCheckBox(
                        value: shouldCheck3,
                        shouldShowBorder: true,
                        borderColor: Colors.black,
                        checkedFillColor: backgroundColorr,
                        borderRadius: 8,
                        borderWidth: 1,
                        checkBoxSize: 25,
                        onChanged: (val) {
                          //do your stuff here
                          setState(() {
                            shouldCheck3 = val;
                          });
                        },
                      ),
                      Text("Doesn't want them"),
                    ],
                  ),
                  Divider(
                    color: black.withOpacity(0.3),
                    height: 20,
                    thickness: 2,
                  ),
                ],
              ),
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
