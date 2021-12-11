import 'package:dating_app/constant/constant.dart';
import 'package:dating_app/models/Firebase.dart';
import 'package:dating_app/models/Passons.dart';
import 'package:dating_app/screens/home/home_screen.dart';
import 'package:dating_app/screens/login_registeration/registeration_screen.dart';
import 'package:dating_app/screens/login_registeration/verification_screen.dart';
import 'package:dating_app/screens/profile_home/profile_home_screen.dart';
import 'package:flutter/material.dart';






class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool showloading = false ;

  void getlogin()async{

    var a = await login(Phone: email,password: password);
   if(a) {
     setState(() {
       showloading = false;
       Navigator.push(
           context,
           MaterialPageRoute(
               builder: (context) => ProfileHomeScreen()));
     });


  }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return showloading?Center(
      child: CircularProgressIndicator(),
    ):Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            SizedBox(
              height: 30,
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
              height: 320,
              decoration: buttonDecoration(),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Hello",
                    style: TextStyle(color: black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign into your account",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: textField(


                        Icon(
                          Icons.mail,
                          color: backgroundColorr,
                        ),
                        "PhoneNumber",
                        false,false),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: textField(
                        Icon(
                          Icons.remove_red_eye,
                          color: backgroundColorr,
                        ),
                        "Password",
                        false,true),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {


                      setState(() {
                        showloading = true;
                       getlogin();

                      });

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
                            "Login",
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
                    "Don't have an account?",
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterationScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Register now",
                      style: TextStyle(
                          color: backgroundColorr,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
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

TextField textField(Icon icon, String hintText, var obscTextTrue , bool ispswd) {
  return TextField(
    onChanged: (value){
      ispswd?password=value:email=value;
    },
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
