import 'package:dating_app/constant/constant.dart';

import 'package:dating_app/screens/selection_screens/gender_name.dart';
import 'package:flutter/material.dart';

class SelectGenderWeight extends StatefulWidget {
  const SelectGenderWeight({Key? key}) : super(key: key);

  @override
  _SelectGenderWeightState createState() => _SelectGenderWeightState();
}

class _SelectGenderWeightState extends State<SelectGenderWeight> {
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
                "People of what weight are you looking for?",
                style: TextStyle(
                    color: white, fontSize: 16, fontWeight: FontWeight.bold),
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
                            builder: (context) => SelectYourName()));
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
                          "UP to 60 kg",
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
                            builder: (context) => SelectYourName()));
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
                          "From 60 to 80 kg",
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
                            builder: (context) => SelectYourName()));
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
                          "Over 100 kg",
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
