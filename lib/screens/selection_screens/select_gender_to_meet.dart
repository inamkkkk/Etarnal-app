import 'package:dating_app/constant/constant.dart';

import 'package:dating_app/screens/selection_screens/dating_purpose_screen.dart';
import 'package:flutter/material.dart';

class SelectGenderToMeet extends StatefulWidget {
  const SelectGenderToMeet({Key? key}) : super(key: key);

  @override
  _SelectGenderToMeetState createState() => _SelectGenderToMeetState();
}

class _SelectGenderToMeetState extends State<SelectGenderToMeet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorr,
      appBar: AppBar(
        backgroundColor: backgroundColorr,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            SizedBox(
              height: 60,
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
                "Who do you want to meet?",
                style: TextStyle(
                    color: white, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectDatingPurpose()));
                  },
                  child: Material(
                    elevation: 10,
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 250,
                      height: 50,
                      child: Center(
                        child: Text(
                          "MAN",
                          style:
                              TextStyle(color: backgroundColorr, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectDatingPurpose()));
                  },
                  child: Material(
                    elevation: 10,
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 250,
                      height: 50,
                      child: Center(
                        child: Text(
                          "WOMEN",
                          style:
                              TextStyle(color: backgroundColorr, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SelectDatingPurpose()));
                  },
                  child: Material(
                    elevation: 10,
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 250,
                      height: 50,
                      child: Center(
                        child: Text(
                          "Everybody",
                          style:
                              TextStyle(color: backgroundColorr, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
