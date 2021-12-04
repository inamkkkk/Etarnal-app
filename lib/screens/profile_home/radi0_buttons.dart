import 'package:dating_app/constant/constant.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _myRadioButton(
            title: "Women",
            value: 1,
            onChanged: (newValue) {
              setState(() {
                _groupValue = newValue;
              });
            }),
        Divider(
          height: 20,
          color: black.withOpacity(0.2),
          thickness: 1,
        ),
        _myRadioButton(
            title: "Man",
            value: 2,
            onChanged: (newValue) {
              setState(() {
                _groupValue = newValue;
              });
            }),
        Divider(
          height: 20,
          color: black.withOpacity(0.2),
          thickness: 1,
        ),
        _myRadioButton(
            title: "Everyone",
            value: 3,
            onChanged: (newValue) {
              setState(() {
                _groupValue = newValue;
              });
            }),
        Divider(
          height: 20,
          color: black.withOpacity(0.2),
          thickness: 1,
        ),
      ],
    );
  }

  Widget _myRadioButton({String? title, int? value, var onChanged}) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title!),
    );
  }
}
