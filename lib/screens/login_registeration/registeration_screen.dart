import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/screens/home/home_screen.dart';
import 'package:dating_app/screens/login_registeration/login_screen.dart';
import 'package:dating_app/screens/login_registeration/verification_screen.dart';
import 'package:flutter/material.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({Key? key}) : super(key: key);

  @override
  _RegisterationScreenState createState() => _RegisterationScreenState();
}

class _RegisterationScreenState extends State<RegisterationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            SizedBox(
              height: 60,
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
              width: 300,
              height: 380,
              decoration: buttonDecoration(),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Create account",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: textField(
                        Icon(
                          Icons.person,
                          color: backgroundColorr,
                        ),
                        "User Name",
                        false),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: textField(
                        Icon(
                          Icons.mail,
                          color: backgroundColorr,
                        ),
                        "Email ID",
                        false),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: textField(
                        Icon(
                          Icons.remove_red_eye,
                          color: backgroundColorr,
                        ),
                        "Password",
                        false),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerificationScreen()));
                    },
                    child: Material(
                      elevation: 10,
                      color: backgroundColorr,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        width: size.width * 0.7,
                        height: size.height * 0.05,
                        child: Center(
                          child: Text(
                            "Register now",
                            style: TextStyle(color: white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Or Register using social media",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20),
                          child: imagecircleAvatar(
                            "assets/oo.png",
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20),
                          child: imagecircleAvatar(
                            "assets/t2.png",
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 20),
                          child: imagecircleAvatar(
                            "assets/gh.png",
                          ),
                        ),
                      ]),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: backgroundColorr,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
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

TextField textField(Icon icon, String hintText, var obscTextTrue) {
  return TextField(
    obscureText: obscTextTrue,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: backgroundColorr),
      suffixIcon: icon,
    ),
  );
}

CircleAvatar imagecircleAvatar(var image) {
  return CircleAvatar(
    backgroundImage: AssetImage(image),
  );
}
