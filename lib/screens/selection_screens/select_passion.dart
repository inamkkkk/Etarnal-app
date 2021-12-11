import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/models/Firebase.dart';
import 'package:dating_app/models/Passons.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';

class SelectYourPassion extends StatefulWidget {
  const SelectYourPassion({Key? key}) : super(key: key);

  @override
  _SelectYourPassionState createState() => _SelectYourPassionState();
}

class _SelectYourPassionState extends State<SelectYourPassion> {
  var showLoading= false;
  void addingUser()async{

   await userSetup(gender:gender,meet:meet,datingP:datingP,height:height,weight:weight,name:name,Bdate:Bdate,password:password);
   setState(() {
     showLoading = false;
     Navigator.push(
         context,
         MaterialPageRoute(
             builder: (context) => ProfileHomeScreen()));

   });
  }

  @override
  Widget build(BuildContext context) {

    return showLoading
        ? Center(
      child: CircularProgressIndicator(),
    ):Scaffold(
      backgroundColor: backgroundColorr,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColorr,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Passions",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, top: 60, right: 20),
              child: Text(
                "Let everyone know what you're passionate about by adding it to your profile",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
               SizedBox(
                 height: 10,
               ),
               Wrap(
             children: [
               hobey(hbey: 'shoping'),
               hobey(hbey: 'Plant-based'),
               hobey(hbey: 'Sports'),
               hobey(hbey: 'Writer'),
               hobey(hbey: 'netflix'),
               hobey(hbey: 'Tea'),
               hobey(hbey: 'instagram'),
               hobey(hbey: 'Athelete'),
               hobey(hbey: 'Climbing'),
               hobey(hbey: 'Movies'),




             ],
               ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {

                setState(() {
showLoading=true;
                  addingUser();
                });

                 print('date : $Bdate gender: $gender,meet: $meet,datingP:$datingP,height:$height,weight:$weight,name:$name,email:$email,password: $password,Passion : $Passions');

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
class hobey extends StatefulWidget {
  final String hbey;

  const hobey({Key? key,required this.hbey}) : super(key: key);

  @override
  _hobeyState createState() => _hobeyState();
}

class _hobeyState extends State<hobey> {
  bool? ismarked = false;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          setState(() {
            Passions!.add("${widget.hbey}");
            ismarked = true;
          });
        },
        child: ismarked!?Container(
                alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20, left: 15),
          width: 40,
          height: 40,
          decoration: RoundButton(),
          child: Icon(Icons.check,color: Colors.white,)
        ):Container(
alignment: Alignment.center,
margin: EdgeInsets.only(top: 20, left: 15),
width: 100,
height: 40,
decoration: buttonDecoration(),
child: Text("${widget.hbey}"),
),
      );
  }
}


