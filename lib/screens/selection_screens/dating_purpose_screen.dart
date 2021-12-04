import 'package:dating_app/constant/constant.dart';

import 'package:dating_app/screens/selection_screens/select_gender_height.dart';
import 'package:flutter/material.dart';

class SelectDatingPurpose extends StatefulWidget {
  const SelectDatingPurpose({Key? key}) : super(key: key);

  @override
  _SelectDatingPurposeState createState() => _SelectDatingPurposeState();
}

class _SelectDatingPurposeState extends State<SelectDatingPurpose> {
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
              width: 120,
              height: 120,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "What is your dating purpose",
                style: TextStyle(
                    color: white, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Only purpose with the same goals will be able to see your goal",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: white.withOpacity(0.7),
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
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
                            builder: (context) => SelectGenderHeight()));
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
                          "A date",
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
                            builder: (context) => SelectGenderHeight()));
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
                          "Flirt",
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
                            builder: (context) => SelectGenderHeight()));
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
                          "Relationship/dating",
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
