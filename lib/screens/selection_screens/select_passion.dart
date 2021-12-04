import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';

class SelectYourPassion extends StatefulWidget {
  const SelectYourPassion({Key? key}) : super(key: key);

  @override
  _SelectYourPassionState createState() => _SelectYourPassionState();
}

class _SelectYourPassionState extends State<SelectYourPassion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorr,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColorr,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Passions",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, top: 60, right: 20),
                  child: Text(
                    "Let everyone know what you're passionate about by adding it to your profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 150, left: 15),
                      width: 100,
                      height: 40,
                      decoration: buttonDecoration(),
                      child: Text("Shopping"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 150, left: 10),
                      width: 100,
                      height: 40,
                      decoration: buttonDecoration(),
                      child: Text("Plant-based"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 150, left: 15),
                      width: 100,
                      height: 40,
                      decoration: buttonDecoration(),
                      child: Text("Sports"),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 150, left: 15),
                        width: 100,
                        height: 40,
                        decoration: buttonDecoration(),
                        child: Text("Writer"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 150, left: 10),
                        width: 100,
                        height: 40,
                        decoration: buttonDecoration(),
                        child: Text("netflix"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 150, left: 15),
                        width: 100,
                        height: 40,
                        decoration: buttonDecoration(),
                        child: Text("netflix"),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 120),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 150, left: 10),
                        width: 60,
                        height: 40,
                        decoration: buttonDecoration(),
                        child: Text("Tea"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 150, left: 10),
                        width: 80,
                        height: 40,
                        decoration: buttonDecoration(),
                        child: Text("instagram"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 150, left: 10),
                        width: 80,
                        height: 40,
                        decoration: buttonDecoration(),
                        child: Text("Athelete"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 150, left: 10),
                        width: 80,
                        height: 40,
                        decoration: buttonDecoration(),
                        child: Text("Climbing"),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 180, left: 50),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 150, left: 15),
                        width: 100,
                        height: 40,
                        decoration: buttonDecoration(),
                        child: Text("Movies"),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 150, left: 10),
                        width: 100,
                        height: 40,
                        decoration: buttonDecoration(),
                        child: Text("Swimming"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileHomeScreen()));
              },
              child: Material(
                elevation: 10,
                color: white,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 120,
                  height: 40,
                  child: Center(
                    child: Text(
                      "NEXT",
                      style: TextStyle(color: backgroundColorr, fontSize: 16),
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
