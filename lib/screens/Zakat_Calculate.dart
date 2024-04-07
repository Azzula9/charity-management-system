// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, file_names

import 'package:charityms/screens/theme.dart';
import 'package:charityms/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  //App widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            //brightness: Brightness.dark,

            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 70,
            title: Text("Al_Zakat calculate"),
            titleTextStyle: TextStyle(
              fontSize: 25,
            ),
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                // ignore: use_full_hex_values_for_flutter_colors
                color: Color(0xffff26522),
              ),
            )),
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 270),
                child: Text(
                  'Gold: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter the weight of gold',
                    labelStyle: TextStyle(
                      color: kTextFieldColor,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 267),
                child: Text(
                  'Silver: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter the weight of silver',
                    labelStyle: TextStyle(
                      color: kTextFieldColor,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 260),
                child: Text(
                  'Money: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter the value of money',
                    labelStyle: TextStyle(
                      color: kTextFieldColor,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: PrimaryButton(buttonText: 'Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
