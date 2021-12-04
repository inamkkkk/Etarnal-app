import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/edit_profile/profile_home.dart';

import 'package:dating_app/screens/edit_profile/setting/custo_setting_app_bar.dart';
import 'package:dating_app/screens/edit_profile/setting/manage_payment_account.dart';
import 'package:dating_app/screens/edit_profile/setting/restore_your_purchase.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class EditYourProfile extends StatefulWidget {
  const EditYourProfile({Key? key}) : super(key: key);

  @override
  _EditYourProfileState createState() => _EditYourProfileState();
}

class _EditYourProfileState extends State<EditYourProfile> {
  bool status = false;
  bool status2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Edit Profile",
              style: TextStyle(
                color: backgroundColorr,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              CupertinoIcons.xmark,
              color: black,
            )
          ],
        ),
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Photo Options",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 12),
                  child: Text(
                    "Smart Photos",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Small photos continuously tests all your profile photos to find the best ones",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: black.withOpacity(0.4)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "About me",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "About me",
                        style: TextStyle(
                          color: black.withOpacity(0.4),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        "500",
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Passions",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 12),
                  child: Text(
                    "Board game, Movies, Music, Museum, Sports",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Professions",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 12),
                  child: Text(
                    "Add your profession",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "School",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 12),
                  child: Text(
                    "Add School",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Living In",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 12),
                  child: Text(
                    "Add City",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Control Your Profile",
                    style: TextStyle(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "ETERNAL",
                    style: TextStyle(
                        color: backgroundColorr,
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 80,
                decoration: settingDecoration(),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Don't show my age",
                              style: TextStyle(
                                color: black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
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
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      color: black.withOpacity(0.6),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Make my distance invisible",
                            style: TextStyle(
                              color: black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: FlutterSwitch(
                            activeColor: backgroundColorr,
                            width: 50.0,
                            height: 20.0,
                            valueFontSize: 20.0,
                            toggleSize: 20.0,
                            value: status2,
                            borderRadius: 30.0,
                            onToggle: (val) {
                              setState(() {
                                status2 = val;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PersonProfileHome()));
              },
              child: Center(
                child: Material(
                  elevation: 10,
                  color: backgroundColorr,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 240,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Done",
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
      ),
    );
  }
}
