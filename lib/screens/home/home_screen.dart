import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/login_registeration/login_screen.dart';
import 'package:dating_app/screens/login_registeration/registeration_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColorr,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: backgroundColorr,
        leading: Center(
          child: Text(
            "0:00",
            style: simpleTextStyle(),
          ),
        ),
        title: Text(
          "Home",
          style: appBarTextStyle(),
        ),
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
                "ETERNAL",
                style: headerTextStyle(),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Center(
                      child: buttonContainer(
                        "Login",
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterationScreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Center(
                      child: buttonContainer("Registeration"),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Now Quick Login User ID",
                style: simpleTextStyle(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Icon(
              Icons.fingerprint_outlined,
              size: 80,
              color: white,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Use Touch ID",
                style: simpleTextStyle(),
              ),
            ),
            SizedBox(
              width: 100,
              child: Divider(
                height: 10,
                thickness: 1,
                color: white,
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
