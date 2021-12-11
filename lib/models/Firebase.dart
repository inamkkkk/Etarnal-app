//
// import 'dart:developer';
// import 'dart:html';
//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// FirebaseAuth _auth = FirebaseAuth.instance;
//
// // import 'Woocomrace_Section/utili/Constants.dart';
//
// String pass = '';
// String name = '';
// String PhoneNumber = '';
// String Password = '';
// String emaillm= '';
// String SerialNumber = '';
// var customer;
// String code = "";
// int i = 0 ;
// String numbers="";
// bool isPassword = true;
// String verificationId;
// IconData icon2 = MaterialCommunityIcons.eye_check_outline;
// enum MobileVerificationState {
//   SHOW_MOBILE_FORM_STATE,
//   SHOW_OTP_FORM_STATE,
// }
//
// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
// class _LoginScreenState extends State<LoginScreen> {
//
//
//   MobileVerificationState currentState =
//       MobileVerificationState.SHOW_MOBILE_FORM_STATE;
//
//   final phoneController = TextEditingController();
//   final otpController = TextEditingController();
//
//   late String verificationId;
//   bool showLoading = false;
//
//   }
//
//
//
//
//
//
//
//   getMobileFormWidget(context) {
//     return Container(
//       color:Colors.black,
//       child: Column(
//
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//          SizedBox(
//            height:50,
//          ),
// Image.asset('images/logo.png',width: 100,),
//           Padding(
//             padding: const EdgeInsets.only(top:30, ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Container(
//                       color: Colors.lightBlueAccent,
//                       height: 1,
//                       width: 1,
//                     ),
//                   ),
//
//                 ),
//                 Text('Create an Account', style: TextStyle(
//                     color: Colors.lightBlueAccent,
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600
//                 ),),
//
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: Container(
//                       color: Colors.lightBlueAccent,
//                       height: 1,
//                       width: 1,
//                     ),
//                   ),),
//
//               ],
//             ),
//
//           ),
//
//           Expanded(
//             child: SingleChildScrollView(
//               child: SizedBox(
// width: double.infinity,
//
//                 child: Column(
//
//
//
//                   // scrollDirection: Axis.vertical,
//                   // shrinkWrap: true,
//                   // physics: const ClampingScrollPhysics(),
//
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left:30,right: 30, bottom: 40,top: 50),
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//
//                         onChanged: (value) {
//                           name = value;
//                         },
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//
//                           prefixIcon: Icon(
//                             Icons.person,
//                             color: Palette.iconColor,
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           contentPadding: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
//                           labelText: 'Name',
//                             labelStyle: TextStyle(color: Colors.white)
//                         ),
//                         obscureText: false,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left:30,right: 30, bottom: 40),
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//                         controller: phoneController,
//                         onChanged: (value) {
//                           PhoneNumber = value;
//                         },
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(
//                             MaterialCommunityIcons.phone,
//                             color: Palette.iconColor,
//                           ),
//
//
//
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           contentPadding: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
//                           labelText: '+923232323456',
//                             labelStyle: TextStyle(color: Colors.white)
//                         ),
//                         obscureText: false,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left:30,right: 30, bottom: 40),
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//
//                         onChanged: (value) {
//                           SerialNumber = value;
//                         },
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(
//                             MaterialCommunityIcons.identifier,
//                             color: Palette.iconColor,
//                           ),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           contentPadding: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
//                           labelText: 'Enter Unique ID',
//                             labelStyle: TextStyle(color: Colors.white)
//                         ),
//
//                       ),
//                     ),
//
//                     Padding(
//                       padding: const EdgeInsets.only(left:30,right: 30, bottom: 40),
//                       child: TextField(style: TextStyle(color: Colors.white),
//
//                         onChanged: (value) {
//                           emaillm = value;
//                         },
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//                           prefixIcon: Icon(
//                             Icons.email_outlined,
//                             color: Palette.iconColor,
//                           ),
//                          enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           contentPadding: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
//                           labelText: 'Email',
//                             labelStyle: TextStyle(color: Colors.white)
//                         ),
//                         obscureText: false,
//                       ),
//                     ),
//
//                     Padding(
//                       padding: const EdgeInsets.only(left:30,right: 30, bottom: 40),
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//                         onChanged: (value) {
//                           pass = value;
//                         },
//                         keyboardType: TextInputType.text,
//                         decoration: InputDecoration(
//
//
//                           prefixIcon: Icon(
//                             MaterialCommunityIcons.lock,
//                             color: Palette.iconColor,
//                           ),
//
//                           suffix: InkWell(
//                             onTap: (){
//                               setState(() {
//                                 if(i==0) {
//                                   isPassword = false;
//                                   icon2 = MaterialCommunityIcons.eye_check_outline;
//                                   i=1;
//                                 }
//                                 else {
//
//                                   icon2 = MaterialCommunityIcons.eye_off_outline;
//                                   isPassword = true;
//                                   i=0;
//                                 }
//                               });
//                             },
//                             child: Icon(
//                               icon2,
//                               color:Palette.iconColor,
//                             ),
//                           ),
//
//
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.lightBlueAccent,),
//                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                           ),
//                           contentPadding: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
//                           labelText: 'Password',
//                             labelStyle: TextStyle(color: Colors.white)
//
//                         ),
//                         obscureText: isPassword,
//                       ),
//                     ),
//
//                     SizedBox(
//                       height: 16,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left:30,right: 30,),
//                       child: Container(
//                         width: double.infinity,
//
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           color: Colors.blue,
//                         ),
//                         child: FlatButton(
//                            onPressed:(){
//                              setState(() {
//
//                                sendusercode();
//                              });
//                            },
//
//                           child: Text("Create now",style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.w600
//                           ),),
//                           color: Colors.blue,
//                           textColor: Colors.white,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left:30,right: 30,),
//                       child: Text('By clicking "Create now", your agree to our Terms of Use and Privacy policy',textAlign: TextAlign.center,),
//                     ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                     Stack(
//                       alignment: Alignment.center,
//
//                       children: [
//                         Column(
//                           children: [
//                             WaveWidget(
//
//                               config: CustomConfig(
//                                 colors: [
//                                   Colors.lightBlueAccent[100],
//                                   Colors.lightBlueAccent[200],
//                                   Colors.lightBlueAccent[400],
//                                   Colors.blue,
//
//
//                                 ],
//                                 durations: [35000, 19440, 10800, 6000],
//                                 heightPercentages: [0.20, 0.23, 0.25, 0.27],
//
//                               ),
//                               backgroundColor: Colors.transparent,
//                               // backgroundImage: backgroundImage,
//                               size: Size(double.infinity, 40.0),
//                               waveAmplitude: 5,
//                             ),
//                             Container(
//                               height: 60,
//                               width: double.infinity,
//                               color:Colors.blue,
//                             )
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Text('Already Register ?'
//                                 ,style:TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                             )),
// SizedBox(
//   height:6
// ),
//                             InkWell(
//                               onTap: (){
//                                 Navigator.push(context, MaterialPageRoute(builder: (context)=> sigIn()));
//                               },
//                               child: Text('Sign in',style:TextStyle(
//                                color: Colors.white,
//                               )),
//                             ),
//
//                           ],
//                         ),
//
//                       ],
//                     )
//                   ],
//
//
//                 ),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
//
//   getOtpFormWidget(context) {
//      return SafeArea(
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//
//            Expanded(
//              child: Container(
//
//                color: Colors.white,
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//
//                    Padding(
//                      padding: EdgeInsets.symmetric(vertical: 14),
//                      child: Text(
//                        "Code is sent to " + phoneController.text,
//                        style: TextStyle(
//                          fontSize: 22,
//                          color: Color(0xFF818181),
//                        ),
//                      ),
//                    ),
//
//                    Expanded(
//                      child: Row(
//                        crossAxisAlignment: CrossAxisAlignment.center,
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//
//                          buildCodeNumberBox(code.length > 0 ? code.substring(0, 1) : ""),
//                          buildCodeNumberBox(code.length > 1 ? code.substring(1, 2) : ""),
//                          buildCodeNumberBox(code.length > 2 ? code.substring(2, 3) : ""),
//                          buildCodeNumberBox(code.length > 3 ? code.substring(3, 4) : ""),
//                          buildCodeNumberBox(code.length > 4 ? code.substring(4, 5) : ""),
//                          buildCodeNumberBox(code.length > 5 ? code.substring(5, 6) : ""),
//
//                        ],
//                      ),
//                    ),
//
//                    Padding(
//                      padding: EdgeInsets.symmetric(vertical: 14),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//
//                          Text(
//                            "Didn't recieve code? ",
//                            style: TextStyle(
//                              fontSize: 18,
//                              color: Color(0xFF818181),
//                            ),
//                          ),
//
//                          SizedBox(
//                            width: 8,
//                          ),
//
//                          GestureDetector(
//                            onTap: sendusercode,
//                            child: Text(
//                              "Request again",
//                              style: TextStyle(
//                                fontSize: 18,
//                              ),
//                            ),
//                          ),
//
//                        ],
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//
//            Container(
//              height: MediaQuery.of(context).size.height * 0.13,
//              decoration: BoxDecoration(
//                color: Colors.white,
//                borderRadius: BorderRadius.all(
//                  Radius.circular(10),
//                ),
//              ),
//              child: Padding(
//                padding: EdgeInsets.all(30),
//                child: Row(
//                  children: <Widget>[
//
//                    Expanded(
//                      child: FlatButton(
//                        onPressed: verifycode,
//                        child: Container(
//                          decoration: BoxDecoration(
//                            color: Colors.lightBlueAccent,
//                            borderRadius: BorderRadius.all(
//                              Radius.circular(08),
//                            ),
//                          ),
//                          child: Center(
//                            child: Text(
//                              "Verify and Create Account",
//                              style: TextStyle(
//                                fontSize: 18,
//                                fontWeight: FontWeight.bold,
//                              ),
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//
//                  ],
//                ),
//              ),
//            ),
//
//            NumericPad(
//              onNumberSelected: (value) {
//                print(value);
//                // numbers = numbers  + value.toString();
//                // print(numbers);
//
//                setState(() {
//                  if(value != -1){
//                    if(code.length < 6){
//                      code = code + value.toString();
//                    }
//                  }
//                  else{
//                    code = code.substring(0, code.length - 1);
//                  }
//                  print(code);
//                });
//              },
//            ),
//
//          ],
//        ),
//      );
//   }
//
//
//
//   Widget buildCodeNumberBox(String codeNumber) {
//
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 8),
//       child: SizedBox(
//         width: 40,
//         height: 50,
//         child: Container(
//           decoration: BoxDecoration(
//             color: Color(0xFFF6F5FA),
//             borderRadius: BorderRadius.all(
//               Radius.circular(10),
//             ),
//             boxShadow: <BoxShadow>[
//               BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 25.0,
//                   spreadRadius: 1,
//                   offset: Offset(0.0, 0.75)
//               )
//             ],
//           ),
//           child: Center(
//             child: Text(
//               codeNumber,
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF1F1F1F),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//
//
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         key: _scaffoldKey,
//         body: Container(
//           child: showLoading
//               ? Center(
//                 child: CircularProgressIndicator(),
//           )
//               : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
//               ? getMobileFormWidget(context)
//               : getOtpFormWidget(context),
//           // padding: const EdgeInsets.all(0.0),
//         ));
//   }
// }
//
//
//
//
//
//
//
//
//
//
// void signInWithPhoneAuthCredential(
//     PhoneAuthCredential phoneAuthCredential) async {
//  bool showLoading;
//     showLoading = true;
//
//   try {
//     final authCredential =
//     await _auth.signInWithCredential(phoneAuthCredential,
//     );
//     //
//
//
//       showLoading = false;
//       if(authCredential?.user != null){
//       // Navigator.push(context, MaterialPageRoute(builder: (context)=> LoadingScreen()));
//     }
//   } on FirebaseAuthException catch (e) {
//
//       showLoading = false;
//     };
//   }
//
//
//   void verifycode() async{
//
//     try {
//
//       final newUser = await _auth.createUserWithEmailAndPassword(
//           email: emaillm, password: pass);
//
//       if (newUser != null) {
//         userSetup(displayName: name, phoneNumber: PhoneNumber,email: emaillm,Id: SerialNumber,SerialNumberpassword: pass );
//         PhoneAuthCredential phoneAuthCredential =
//         PhoneAuthProvider.credential(
//             verificationId: verificationId, smsCode: code);
//         signInWithPhoneAuthCredential(phoneAuthCredential);
//
//
//       }
//
//
//     } catch (e) {
//       print(e);
//     }
//
//
//
//   }
//
//
//   Future<bool> sendusercode(String Num) async {
//     bool showLoading;
//
//
//       showLoading = true;
//
//
//
//     await _auth.verifyPhoneNumber(
//       phoneNumber: Num,
//       verificationCompleted: (phoneAuthCredential) async {
//
//           showLoading = false;
//
// //signInWithPhoneAuthCredential(phoneAuthCreFdential);
//       },
//       verificationFailed: (verificationFailed) async {
//
//           showLoading = false;
//
//         // _scaffoldKey.currentState!.showSnackBar(
//         //     SnackBar(content: Text(verificationFailed.message)));
//       },
//       codeSent: (verificationId, resendingToken) async {
//              showLoading = false;
//                 verificationId = verificationId;
//
//       },
//       codeAutoRetrievalTimeout: (verificationId) async {
//
//
//       }
//     );
//   return showLoading;
//   }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'Passons.dart';

FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<bool> login({var Phone, var password}) async
{
  bool isUser = false;
  final users = await _firestore.collection('Users').get();
  for(var user in users.docs){
    final uid = user.data()['PhoneNumber'].toString();
    final pass = user.data()['Pass'].toString();
    print('Pass :$pass');
    print('phone: $uid');
    print('phoned : $Phone');
    print('password : $password');
   if (Phone==uid && password == pass) isUser = true;
   print(isUser);
  }
  print('isUser = $isUser');
  return isUser;
}

Future<void> userSetup(
    {String? gender,meet,datingP,height,weight,name,Bdate,password}) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  var Id = FirebaseAuth.instance.currentUser!.phoneNumber;

  users.doc(Id).set({'Name': name, 'gender':  gender, 'PhoneNumber': Id,'datingP':datingP,'height':height,'weight': weight,'Bdate':Bdate,'Pass':password,'Hobies': Passions});
  return;
}

