import 'package:dating_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: Color(0xFF00897B),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.emoji_emotions,
              color: Colors.white,
              size: 27,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.mobile_friendly,
              color: Colors.white,
              size: 27,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.white,
              size: 27,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.chat,
              color: Colors.white,
              size: 27,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
              size: 27,
            ),
          ),
        ],
      ),
    );
  }
}
