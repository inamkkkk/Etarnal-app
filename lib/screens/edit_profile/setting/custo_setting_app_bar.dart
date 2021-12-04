import 'package:dating_app/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSettingAppBar extends StatelessWidget {
  const CustomSettingAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 18, right: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: black,
          ),
          Text(
            "Setting",
            style: TextStyle(
                color: backgroundColorr,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Icon(CupertinoIcons.xmark)
        ],
      ),
    );
  }
}
