
import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/models/NumericPad.dart';
import 'package:dating_app/models/Passons.dart';
import 'package:dating_app/screens/home/home_screen.dart';
import 'package:dating_app/screens/login_registeration/login_screen.dart';
import 'package:dating_app/screens/login_registeration/registeration_screen.dart';

import 'package:dating_app/screens/selection_screens/select_gender.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


String? verificationID;

class VerificationScreen extends StatefulWidget {
   final  veri;

  const VerificationScreen({Key? key,this.veri}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  bool showLoading = false;
  String? verificationID;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });
    try {
      final authCredential =
      await _auth.signInWithCredential(phoneAuthCredential,
      );
      //

      setState(() {
        showLoading = false;
      });
      if(authCredential.user != null){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SelectGender()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });

    }
  }

  void verifycode() async {


    try {

      print('to wer do');
      //userSetup(displayName: name, phoneNumber: PhoneNumber,email: emaillm,Id: SerialNumber,SerialNumberpassword: pass );
      PhoneAuthCredential phoneAuthCredential =
     await PhoneAuthProvider.credential(
          verificationId: verificationID!=null?verificationID:widget.veri, smsCode: code);

      if(phoneAuthCredential!= null) {
        signInWithPhoneAuthCredential(phoneAuthCredential);
        print('inamkhan$phoneAuthCredential');
      }



    } catch (e) {
      print(e);
    }



  }

  void sendusercode() async {
    print('inam');
    setState(() {
      showLoading = true;
    });


    await _auth.verifyPhoneNumber(
      phoneNumber: email!,




      verificationCompleted: (phoneAuthCredential) async {
        print('inam2');
        setState(() {
          showLoading = false;

        });
//signInWithPhoneAuthCredential(phoneAuthCreFdential);
      },
      verificationFailed: (verificationFailed) async {
        setState(() {
          showLoading = false;
        });
        _scaffoldKey.currentState!.showSnackBar(
            SnackBar(content: Text(verificationFailed.message??'inam')));

        print(verificationFailed.message);
      },
      codeSent: (verificationId, resendingToken) async {
        setState(() {
          showLoading = false;

          this.verificationID = verificationId;
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VerificationScreen()));
        });
      },
      codeAutoRetrievalTimeout: (verificationId) async {},
    );
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return showLoading
        ? Center(
      child: CircularProgressIndicator(),
    )
        :Scaffold(
      key: _scaffoldKey,
      backgroundColor: white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: 100,
              height: 100,
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
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(bottom: 30),
              width: MediaQuery.of(context).size.width,

              decoration: verificationScreenDecoration(),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Verifications",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "A 6-digits pin has been sents to $email, enter it below to continue",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          buildCodeNumberBox(code.length > 0 ? code.substring(0, 1) : ""),
                          buildCodeNumberBox(code.length > 1 ? code.substring(1, 2) : ""),
                          buildCodeNumberBox(code.length > 2 ? code.substring(2, 3) : ""),
                          buildCodeNumberBox(code.length > 3 ? code.substring(3, 4) : ""),
                          buildCodeNumberBox(code.length > 4 ? code.substring(4, 5) : ""),
                          buildCodeNumberBox(code.length > 5 ? code.substring(5, 6) : ""),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "I did not received a code",
                        style: TextStyle(color: black, fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            sendusercode();
                          });

                        },
                        child: Text(
                          "RESEND",
                          style: TextStyle(
                              letterSpacing: 1,
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            verifycode();
                          });

                        },
                          child: Material(
                            elevation: 10,
                            color: backgroundColorr,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 250,
                              height: 50,
                              decoration: veriBoxDecoration(),
                              child: Center(
                                child: Text(
                                  "CONTINUE",
                                  style: TextStyle(
                                      color: backgroundColorr,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),

                      SizedBox(
                        height: 20,
                      ),
                      NumericPad(
                        onNumberSelected: (value) {
                          print(value);
                          // numbers = numbers  + value.toString();
                          // print(numbers);

                          setState(() {
                            if(value != -1){
                              if(code.length < 6){
                                code = code + value.toString();
                              }
                            }
                            else{
                              code = code.substring(0, code.length - 1);
                            }
                            print(code);
                          });
                        },
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildCodeNumberBox(String codeNumber) {

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: SizedBox(
      width: 40,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF6F5FA),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 25.0,
                spreadRadius: 1,
                offset: Offset(0.0, 0.75)
            )
          ],
        ),
        child: Center(
          child: Text(
            codeNumber,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    ),
  );
}

