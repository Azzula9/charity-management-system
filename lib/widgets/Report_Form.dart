// ignore: file_names
// ignore_for_file: file_names

import 'package:charityms/bloc/authbloc_event.dart';
import 'package:charityms/model/reportmodel.dart';
import 'package:charityms/screens/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../bloc/authbloc_bloc.dart';
import '../main.dart';


class ReportForm extends StatefulWidget {
  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  @override
  Widget build(BuildContext context) {
    TextEditingController firstname = TextEditingController();
    TextEditingController lastname = TextEditingController();
    TextEditingController phonenumber = TextEditingController();
    TextEditingController email = TextEditingController();
    return Column(
      children: [
        buildInputForm('First Name', firstname),
        buildInputForm('Last Name', lastname),
        buildInputForm('Email', email),
        buildInputForm('Phone Number', phonenumber),
        ElevatedButton(
            onPressed: () {
              final user = Report(
                firstName: firstname.text,
                lastName: lastname.text,
                email: email.text,
                phoneNumber: phonenumber.text,
              );
              BlocProvider.of<AuthblocBloc>(context)
                  .add(reportevent(user: user));
            },
            child: Text("Submit"))
      ],
    );
  }

  Padding buildInputForm(String label, TextEditingController cont) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: cont,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: kTextFieldColor,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}