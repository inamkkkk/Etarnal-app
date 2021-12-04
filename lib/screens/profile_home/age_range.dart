import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:dating_app/screens/profile_home/radi0_buttons.dart';
import 'package:flutter/material.dart';

class AgeRange extends StatelessWidget {
  const AgeRange({Key? key}) : super(key: key);

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
                  "Age Range",
                  style: TextStyle(
                      color: black, fontWeight: FontWeight.bold, fontSize: 20),
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
                          "18",
                          style: TextStyle(color: black),
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
                          "22",
                          style: TextStyle(color: black),
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
