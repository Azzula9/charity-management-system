// ignore_for_file: prefer_const_constructors

import 'package:charityms/screens/theme.dart';
import 'package:charityms/widgets/primary_button.dart';
import 'package:charityms/widgets/reset_form.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
              ),
              Text(
                'Reset Password',
                style: TextStyle(
                  // fontFamily: 'Painted Paradise - Demo',
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Please enter your email address',
                style: subTitle.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ResetForm(),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogInScreen(),
                        ));
                  },
                  child: PrimaryButton(buttonText: 'Reset Password')),
            ],
          ),
        ),
      ),
    );
  }
}
