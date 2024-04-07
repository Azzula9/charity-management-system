// ignore_for_file: prefer_const_constructors

import 'package:charityms/screens/theme.dart';
import 'package:charityms/widgets/checkbox.dart';
import 'package:charityms/widgets/primary_button.dart';
import 'package:charityms/widgets/sinup_form.dart';
import 'package:flutter/material.dart';
import 'package:charityms/widgets/login_option.dart';
import 'login.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Text(
                'Create Account',
                style: TextStyle(
                  // fontFamily: 'Painted Paradise - Demo',
                  fontSize: 40,
                  decorationThickness: 4,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  Text(
                    'Already a member?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LogInScreen()));
                    },
                    child: Text(
                      'Log In',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: CheckBox('Agree to terms and conditions.'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: PrimaryButton(
                buttonText: 'Sign Up',
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
