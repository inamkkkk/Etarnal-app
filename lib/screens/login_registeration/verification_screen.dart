import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/home/home_screen.dart';
import 'package:dating_app/screens/login_registeration/login_screen.dart';

import 'package:dating_app/screens/selection_screens/select_gender.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "ETERNAL",
                style: headerTextStyle(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 30),
              width: 320,
              height: 450,
              decoration: verificationScreenDecoration(),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Verifications",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "A 4-digits pin has been sents to your email address, enter it below to continue",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 50,
                            height: 50,
                            decoration: veriBoxDecoration(),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 50,
                            height: 50,
                            decoration: veriBoxDecoration(),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 50,
                            height: 50,
                            decoration: veriBoxDecoration(),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, right: 20),
                            width: 50,
                            height: 50,
                            decoration: veriBoxDecoration(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "I did not received a code",
                        style: TextStyle(color: black, fontSize: 14),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "RESEND",
                        style: TextStyle(
                            letterSpacing: 1,
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectGender()));
                        },
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectGender()));
                          },
                          child: Material(
                            elevation: 10,
                            color: backgroundColorr,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 250,
                              height: 50,
                              decoration: veriBoxDecoration(),
                              child: Center(
                                child: Text(
                                  "CONTINUE",
                                  style: TextStyle(
                                      color: backgroundColorr,
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
                      SizedBox(
                        width: 60,
                        child: Divider(
                          height: 10,
                          thickness: 5,
                          color: white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
