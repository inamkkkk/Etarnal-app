// @dart=2.9
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dating_app/screens/home/splash_screen.dart';
import 'package:dating_app/screens/selection_screens/select_gender.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
bool USE_FIRESTORE_EMULATOR = false ;
SharedPreferences prefs;
void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  debugDefaultTargetPlatformOverride = TargetPlatform.android;
 await Firebase.initializeApp();
  FirebaseAuth.instance.signOut();
  // prefs = await SharedPreferences.getInstance();
  if (USE_FIRESTORE_EMULATOR) {
    FirebaseFirestore.instance.settings = const Settings(
        host: 'localhost:8080', sslEnabled: false, persistenceEnabled: false);
  }
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dating App',
        theme: ThemeData(
          primaryColor: Color(0xff00897b),
        ),
        home: FirebaseAuth.instance.currentUser != null?SelectGender():SplashScreen());
  }
}
