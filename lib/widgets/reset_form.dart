// ignore_for_file: prefer_const_constructors

import 'package:charityms/screens/theme.dart';
import 'package:flutter/material.dart';
import 'package:charityms/screens/theme.dart';

class ResetForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffff26522),
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 30),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.keyboard_return,
          color: Colors.black,
        ),
      ),
      centerTitle: false,
      title: Text(
        "Back".toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.credit_card),
          color: Colors.black,
        )
      ],
    );
  }
}
