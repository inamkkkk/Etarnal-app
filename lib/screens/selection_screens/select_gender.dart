import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/models/Passons.dart';
import 'package:dating_app/screens/selection_screens/select_gender_to_meet.dart';

import 'package:flutter/material.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({Key? key}) : super(key: key);

  @override
  _SelectGenderState createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorr,
      appBar: AppBar(
        backgroundColor: backgroundColorr,
        elevation: 0,
        leading: Center(
          child: Text(
            "0.00",
            style: TextStyle(color: white, fontSize: 20),
          ),
        ),
      ),
      body: Column(
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
              "Select Your Sex",
              style: TextStyle(
                  color: white, fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  gender = 'Man';
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectGenderToMeet()));
                },
                child: Material(
                  elevation: 10,
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 140,
                    height: 50,
                    child: Center(
                      child: Text(
                        "MAN",
                        style: TextStyle(color: backgroundColorr, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  gender = 'women';
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectGenderToMeet()));
                },
                child: Material(
                  elevation: 10,
                  color: white,
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 140,
                    height: 50,
                    child: Center(
                      child: Text(
                        "WOMEN",
                        style: TextStyle(color: backgroundColorr, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
