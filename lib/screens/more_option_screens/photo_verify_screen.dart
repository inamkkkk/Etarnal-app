import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class PhotoVerification extends StatefulWidget {
  const PhotoVerification({Key? key}) : super(key: key);

  @override
  _PhotoVerificationState createState() => _PhotoVerificationState();
}

class _PhotoVerificationState extends State<PhotoVerification> {
  int _groupValue = -1;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Container(
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
                  "Photo verified",
                  style: TextStyle(
                      color: black, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "Are there photos for real?",
                  style: TextStyle(
                      color: black.withOpacity(0.4),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                children: [
                  _myRadioButton(
                      title: "Photo verified only",
                      value: 1,
                      onChanged: (newValue) {
                        setState(() {
                          _groupValue = newValue;
                        });
                      }),
                  Divider(
                    color: black.withOpacity(0.3),
                    height: 20,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20, left: 20),
                        child: FlutterSwitch(
                          activeColor: backgroundColorr,
                          width: 60.0,
                          height: 25.0,
                          valueFontSize: 25.0,
                          toggleSize: 25.0,
                          value: status,
                          borderRadius: 30.0,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "See other people if I run out",
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "Well show you who else is out there",
                              style: TextStyle(
                                  color: black.withOpacity(0.2), fontSize: 12),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     CustomSwitch(
            //       activeColor: backgroundColorr,
            //       value: status,
            //       onChanged: (value) {
            //         setState(() {
            //           status = value;
            //         });
            //       },
            //     ),
            //     SizedBox(
            //       width: 12.0,
            //     ),
            //     Text(
            //       'Value : $status',
            //       style: TextStyle(color: Colors.black, fontSize: 20.0),
            //     )
            //   ],
            // ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProfileHomeScreen()));
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
      ),
    );
  }

  Widget _myRadioButton({String? title, int? value, var onChanged}) {
    return RadioListTile(
      activeColor: backgroundColorr,
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(
        title!,
        style:
            TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
