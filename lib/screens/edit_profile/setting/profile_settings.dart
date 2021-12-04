import 'package:dating_app/constant/constant.dart';

import 'package:dating_app/screens/edit_profile/setting/custo_setting_app_bar.dart';
import 'package:dating_app/screens/edit_profile/setting/manage_payment_account.dart';
import 'package:dating_app/screens/edit_profile/setting/restore_your_purchase.dart';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  bool status = false;
  bool status2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSettingAppBar(),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Account setting",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Phone Number",
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        "308-263-764",
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Text(
              "Verify a phone number to help secure your account",
              style: TextStyle(fontSize: 13, color: black),
            )),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Discovery setting",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Location",
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Text(
                        "My Account locations",
                        style: TextStyle(
                          color: backgroundColorr,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Global",
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: FlutterSwitch(
                        activeColor: backgroundColorr,
                        width: 50.0,
                        height: 20.0,
                        valueFontSize: 20.0,
                        toggleSize: 20.0,
                        value: status,
                        borderRadius: 30.0,
                        onToggle: (val) {
                          setState(() {
                            status = val;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
                child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Going global will allow you to see people nearby and from around the world",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: black),
              ),
            )),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "App Settings",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 100,
                decoration: settingDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                          color: backgroundColorr,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 3),
                      child: Text(
                        "Email",
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 3),
                      child: Text(
                        "Push notifications",
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 3),
                      child: Text(
                        "Team Tinder",
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Payment Account",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ManagePaymentAccount()),
                  );
                },
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: SettingTopSCuteDec(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Manage Payment Account",
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(Icons.arrow_forward_ios_outlined)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestoreYourPurchase()),
                  );
                },
                child: Container(
                  width: 300,
                  height: 40,
                  decoration: SettingDownSCuteDec(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Restore Purchase",
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Icon(Icons.arrow_forward_ios_outlined)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Contact Us",
                style: TextStyle(
                    color: black, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 300,
                height: 40,
                decoration: settingDecoration(),
                child: Container(
                  margin: EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    "Help & Support",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 300,
                height: 120,
                decoration: settingDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                        "Legal",
                        style: TextStyle(
                          color: backgroundColorr,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                        "Licenses",
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        "Privacy Policy",
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        "Privacy Preferences",
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        "Term of Service",
                        style: TextStyle(
                          color: black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ProfileHomeScreen()));
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
                        "Logout",
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
