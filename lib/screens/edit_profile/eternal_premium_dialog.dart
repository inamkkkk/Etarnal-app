import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/edit_profile/carousel_slider_page.dart';
import 'package:dating_app/screens/edit_profile/profile_home.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';

class GetEternalPremiumButton extends StatefulWidget {
  const GetEternalPremiumButton({Key? key}) : super(key: key);

  @override
  _GetEternalPremiumButtonState createState() =>
      _GetEternalPremiumButtonState();
}

class _GetEternalPremiumButtonState extends State<GetEternalPremiumButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  width: 50,
                  height: 50,
                  child: Image.asset("assets/logo.png"),
                ),
                Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      "Get Eternal premium",
                      style: TextStyle(color: backgroundColorr, fontSize: 16),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              child: SliderPage(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 80,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 2.0,
                            offset: Offset(1, 1),
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 2.0,
                            offset: Offset(1, 1),
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "2",
                            style: TextStyle(color: black, fontSize: 25),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "weeks",
                            style: TextStyle(color: black, fontSize: 14),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "69 rupees",
                            style: TextStyle(
                                color: black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 80,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 2.0,
                            offset: Offset(1, 1),
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 2.0,
                            offset: Offset(1, 1),
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "3",
                            style: TextStyle(color: black, fontSize: 25),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "Months",
                            style: TextStyle(color: black, fontSize: 14),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "368 rupees",
                            style: TextStyle(
                                color: black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 80,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 2.0,
                            offset: Offset(1, 1),
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 2.0,
                            offset: Offset(1, 1),
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "6",
                            style: TextStyle(color: black, fontSize: 25),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "Months",
                            style: TextStyle(color: black, fontSize: 14),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "269 rupees",
                            style: TextStyle(
                                color: black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 5,
                    ),
                    width: 80,
                    height: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 2.0,
                            offset: Offset(1, 1),
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 2.0,
                            offset: Offset(1, 1),
                          ),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 47),
                          child: Text(
                            "Lifetime",
                            style: TextStyle(
                                color: black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "69 rupees",
                            style: TextStyle(
                                color: black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
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
          ),
        ],
      ),
    );
  }
}
