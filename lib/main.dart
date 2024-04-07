import 'package:charityms/screens/Zakat_Calculate.dart';
import 'package:charityms/screens/campaign.dart';
import 'package:charityms/screens/login.dart';
import 'package:charityms/screens/report_for_needy.dart';
import 'package:charityms/screens/suggetion.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      // ignore: prefer_const_constructors
      home: HomePage(),
    );
  }
}
