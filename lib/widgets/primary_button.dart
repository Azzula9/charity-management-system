import 'package:charityms/screens/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;

  PrimaryButton({
    required this.buttonText,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Color(0xffff26522)),
      child: Text(
        buttonText,
        style: textButton.copyWith(color: kWhiteColor),
      ),
    );
  }
}
