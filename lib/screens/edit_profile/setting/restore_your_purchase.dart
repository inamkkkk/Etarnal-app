import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/edit_profile/profile_home.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';

class RestoreYourPurchase extends StatefulWidget {
  const RestoreYourPurchase({Key? key}) : super(key: key);

  @override
  _RestoreYourPurchaseState createState() => _RestoreYourPurchaseState();
}

class _RestoreYourPurchaseState extends State<RestoreYourPurchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "If you've created a new account and you're looking to transfer your subscription from your old account, check your email recipt and enter your purchase confirmation below",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 14, color: black),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Confirmation Number",
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 100,
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
                        "Submit",
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
