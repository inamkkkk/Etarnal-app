import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/models/Passons.dart';
import 'package:dating_app/screens/selection_screens/select_date.dart';
import 'package:flutter/material.dart';

class SelectYourName extends StatefulWidget {
  const SelectYourName({Key? key}) : super(key: key);

  @override
  _SelectYourNameState createState() => _SelectYourNameState();
}

class _SelectYourNameState extends State<SelectYourName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorr,
      appBar: AppBar(
        backgroundColor: backgroundColorr,
        elevation: 0,
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
                "What's Your Name?",
                style: TextStyle(
                    color: white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              width: 320,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: TextField(
                onChanged: (value){
                  name = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Your Name",
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 18),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SelectDate()));
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
