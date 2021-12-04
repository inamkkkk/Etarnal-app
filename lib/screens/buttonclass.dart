import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonApplyClass extends StatelessWidget {
  ButtonApplyClass({
    this.name,
    this.onpressed,
    Key? key,
  }) : super(key: key);
  var onpressed;
  var name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 23.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
      ),
      height: 80,
      width: 270,
      // color: Colors.teal,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text('$name'),
        style: ElevatedButton.styleFrom(
          primary: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.0),
          ),
        ),
      ),
    );
  }
}
