import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/cross_button/block_report_screen.dart';
import 'package:dating_app/screens/home/custom_app_bar.dart';
import 'package:dating_app/screens/profile_home/age_range.dart';
import 'package:dating_app/screens/profile_home/bottom_navigation_bar.dart';
import 'package:dating_app/screens/profile_home/more_options_screen.dart';
import 'package:dating_app/screens/profile_home/radi0_buttons.dart';
import 'package:dating_app/screens/profile_home/show_country_distance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class ProfileHomeScreen extends StatefulWidget {
  const ProfileHomeScreen({Key? key}) : super(key: key);

  @override
  _ProfileHomeScreenState createState() => _ProfileHomeScreenState();
}

class _ProfileHomeScreenState extends State<ProfileHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.059,
                    ),
                    height: size.height * 0.7,
                    width: size.width * 0.88,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: black.withOpacity(0.7),
                            blurRadius: 20,
                            offset: Offset(5, 20),
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/body.jpg"),
                            fit: BoxFit.cover)
                        // image: DecorationImage(
                        //     image: AssetImage("assets/k.png"), fit: BoxFit.cover),
                        ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: size.height * 0.08, left: size.height * 0.039),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check,
                    color: white,
                    size: 20,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: size.height * 0.08, right: size.width * 0.35),
                  child: Text(
                    "Ananya Panday,",
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: size.height * 0.08, left: size.width * 0.09),
                  child: Text(
                    "24",
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: size.height * 0.11, right: size.width * 0.5),
                  child: Text(
                    "Peshawar",
                    style: TextStyle(color: white, fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: size.height * 0.06, left: size.width * 0.77),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          isDismissible: false,
                          enableDrag: false,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => applyFilter());
                    },
                    child: Icon(
                      Icons.more_horiz,
                      size: 50.0,
                      color: white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: size.height * 0.03,
                  left: size.width * 0.36,
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          isDismissible: false,
                          enableDrag: false,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          context: context,
                          builder: (context) => BlockAndReportButtons());
                    },
                    child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration:
                            BoxDecoration(color: white, shape: BoxShape.circle),
                        child: Icon(
                          CupertinoIcons.xmark,
                          size: 40,
                        )),
                  ),
                ),
                Positioned(
                  bottom: size.height * 0.03,
                  left: size.width * 0.5,
                  child: Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration:
                          BoxDecoration(color: white, shape: BoxShape.circle),
                      child: Icon(
                        CupertinoIcons.heart_solid,
                        color: black,
                        size: 40,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget applyFilter() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  // isDismissible: false,
                  //enableDrag: false,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  context: context,
                  builder: (context) => showMe());
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: black.withOpacity(0.7),
                      offset: Offset(5, 20),
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Show me",
                      style: TextStyle(
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 110),
                    child: Text(
                      "Women",
                      style: TextStyle(
                        color: backgroundColorr,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: backgroundColorr,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  // isDismissible: false,
                  //enableDrag: false,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  context: context,
                  builder: (context) => AgeRange());
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: black.withOpacity(0.7),
                      offset: Offset(5, 20),
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Age Range",
                      style: TextStyle(
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 110),
                    child: Text(
                      "18-29",
                      style: TextStyle(
                        color: backgroundColorr,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: backgroundColorr,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  context: context,
                  builder: (context) => ShowCountryDistance());
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: black.withOpacity(0.7),
                      offset: Offset(5, 20),
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Distance",
                      style: TextStyle(
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 110),
                    child: Text(
                      "Country",
                      style: TextStyle(
                        color: backgroundColorr,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: backgroundColorr,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MoreOption()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      color: black.withOpacity(0.7),
                      offset: Offset(5, 20),
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "More Options",
                      style: TextStyle(
                          color: black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: backgroundColorr,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileHomeScreen()));
            },
            child: Material(
              elevation: 10,
              color: backgroundColorr,
              borderRadius: BorderRadius.circular(30),
              child: Container(
                width: 180,
                height: 40,
                child: Center(
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
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
    );
  }

  Widget showMe() {
    int _value = 1;
    return Container(
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
                "Show me",
                style: TextStyle(
                    color: black, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          RadioButton(),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfileHomeScreen()));
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
            height: 20,
          ),
        ],
      ),
    );
  }
}
