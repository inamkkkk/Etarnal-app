import 'package:dating_app/constant/constant.dart';
import 'package:flutter/material.dart';

class ManagePaymentAccount extends StatefulWidget {
  const ManagePaymentAccount({Key? key}) : super(key: key);

  @override
  _ManagePaymentAccountState createState() => _ManagePaymentAccountState();
}

class _ManagePaymentAccountState extends State<ManagePaymentAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(left: 20, top: 30),
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: black,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(
            "Manage Payment Account",
            style: TextStyle(
                color: black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text(
            "You have no cards saved. To Add a card, make a Purchase",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
