// ignore_for_file: prefer_const_constructors

import 'package:charityms/screens/reset_password.dart';
import 'package:charityms/screens/sinup.dart';
import 'package:charityms/screens/theme.dart';
import 'package:charityms/widgets/login_form.dart';
import 'package:charityms/widgets/login_option.dart';
import 'package:charityms/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
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
                height: 120,
              ),
              Text(
                'Log in',
                style: TextStyle(
                  // fontFamily: 'Painted Paradise - Demo',
                  fontSize: 50,
                  decorationThickness: 22,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'New to this app?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              LogInForm(),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen()));
                },
                // child: Text(
                //   'Forgot password?',
                //   style: TextStyle(
                //     color: kZambeziColor,
                //     fontSize: 14,
                //     decoration: TextDecoration.underline,
                //     decorationThickness: 1,
                //   ),
                // ),
              ),
              SizedBox(
                height: 30,
              ),
              PrimaryButton(
                buttonText: 'Log In',
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Or log in with:',
                style: subTitle.copyWith(color: kBlackColor),
              ),
              SizedBox(
                height: 25,
              ),
              LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
