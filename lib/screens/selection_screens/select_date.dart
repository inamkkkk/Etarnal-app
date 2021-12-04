import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/selection_screens/select_passion.dart';
import 'package:flutter/material.dart';

class SelectDate extends StatefulWidget {
  const SelectDate({Key? key}) : super(key: key);

  @override
  _SelectDateState createState() => _SelectDateState();
}

class _SelectDateState extends State<SelectDate> {
  late DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorr,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColorr,
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
                "What's Your Birthday?",
                style: TextStyle(
                    color: white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Text(
                "In order to register, you must be at least 18 years old",
                textAlign: TextAlign.center,
                style: TextStyle(color: white, fontSize: 14),
              ),
            ),
            InkWell(
              onTap: () {
                showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2050))
                    .then((date) {
                  setState(() {
                    dateTime = date!;
                  });
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 320,
                height: 70,
                decoration: buttonDecoration(),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 50, right: 20),
                        child: Text(dateTime.day.toString())),
                    VerticalDivider(
                      color: Colors.red,
                      width: 20,
                      thickness: 3,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 30, right: 30),
                        child: Text(dateTime.month.toString())),
                    VerticalDivider(
                      color: Colors.red,
                      width: 20,
                      thickness: 3,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 50, right: 10),
                        child: Text(dateTime.year.toString())),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SelectYourPassion()));
              },
              child: Material(
                elevation: 10,
                color: white,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: 120,
                  height: 40,
                  child: Center(
                    child: Text(
                      "NEXT",
                      style: TextStyle(color: backgroundColorr, fontSize: 16),
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
      ),
    );
  }
}
