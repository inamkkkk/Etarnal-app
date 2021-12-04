import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/edit_profile/create_or_upload_photo.dart';
import 'package:dating_app/screens/edit_profile/edit_profile_screen.dart';
import 'package:dating_app/screens/edit_profile/eternal_premium_dialog.dart';

import 'package:dating_app/screens/edit_profile/setting/profile_settings.dart';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PersonProfileHome extends StatefulWidget {
  const PersonProfileHome({Key? key}) : super(key: key);

  @override
  _PersonProfileHomeState createState() => _PersonProfileHomeState();
}

class _PersonProfileHomeState extends State<PersonProfileHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 20, top: 30),
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: black,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            "Profile",
            style: TextStyle(
                color: black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.1),
                width: 100,
                height: 100,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/body.jpg"),
                ),
              ),
            ),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileSettings()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: size.width * 0.1),
                    width: 60,
                    height: 60,
                    decoration: profileBoxDecoration(Colors.white),
                    child: Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateOrUploadPhoto()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                        left: size.width * 0.42, top: size.height * 0.11),
                    width: 60,
                    height: 60,
                    decoration: profileBoxDecoration(backgroundColorr),
                    child: Icon(
                      Icons.camera_alt,
                      size: 30,
                      color: white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditYourProfile()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: size.width * 0.7),
                    width: 60,
                    height: 60,
                    decoration: profileBoxDecoration(Colors.white),
                    child: Icon(
                      Icons.person_add_alt_rounded,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: size.width * 0.37, top: size.height * 0.04),
                  child: Row(
                    children: [
                      Text(
                        "Ananya,",
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "21",
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("assets/logo.png")),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Eternal premium",
                    style: TextStyle(color: backgroundColorr, fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text("See who likes you & more",
                  style: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                // showModalBottomSheet(
                //     shape: RoundedRectangleBorder(
                //         borderRadius:
                //             BorderRadius.vertical(top: Radius.circular(20))),
                //     context: context,
                //     builder: (context) => GetEternalPremiumButton());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GetEternalPremiumButton()),
                );
              },
              child: Center(
                child: Material(
                  elevation: 10,
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 240,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Get Eternal premium",
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
          ],
        ),
      ),
    );
  }
}
