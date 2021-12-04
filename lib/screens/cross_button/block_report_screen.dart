import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlockAndReportButtons extends StatelessWidget {
  const BlockAndReportButtons({Key? key}) : super(key: key);

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
                  "Block & Report",
                  style: TextStyle(
                      color: black, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 40,
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
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 220,
                    height: 40,
                    child: Center(
                      child: Text(
                        "BLOCK",
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
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 220,
                    height: 40,
                    child: Center(
                      child: Text(
                        "BLOCK & REPORT",
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
