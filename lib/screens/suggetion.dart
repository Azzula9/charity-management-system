// ignore_for_file: prefer_const_constructors

import 'package:charityms/bloc/authbloc_bloc.dart';
import 'package:charityms/bloc/authbloc_state.dart';
import 'package:charityms/screens/theme.dart';
import 'package:charityms/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:charityms/model/suggestion.dart';
import 'package:charityms/bloc/authbloc_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/authbloc_bloc.dart';

class suggestion extends StatefulWidget {
  @override
  _suggestionState createState() => _suggestionState();
}

TextEditingController idea = TextEditingController();

class _suggestionState extends State<suggestion> {
  @override
  //App widget tree
  Widget build(BuildContext context) {
    return BlocConsumer<AuthblocBloc, AuthblocState>(
        listener: (context, state) {
      if (state is successedreportstate) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('your report has been taken')));
      }
      if (state is Faildrepotstate) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('some thing is wrong')));
        // Navigator.of(context).pushNamed('/homepage');
      }
      if (state is successedreportstate) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('your form has been taken')));
        Navigator.of(context).pushNamed('/homepage');
      } else if (state is Faildrepotstate) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('some thing is wrong')));
      }
    }, builder: (context, state) {
      return Scaffold(
          body: SingleChildScrollView(
              child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 80,
              ),
              child: Center(
                child: Text(
                  'Donate an idea',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 50,
              ),
              child: TextFormField(
                controller: idea,
                decoration: InputDecoration(
                  labelText: 'Enter your idea',
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
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      final user = Sugg(
                        value: idea.text,
                      );
                      BlocProvider.of<AuthblocBloc>(context)
                          .add(suggevent(user: user));
                    },
                    child: Text("Submit"))),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image(
                image: AssetImage('images/idea.jpg'),
              ),
            )
          ])));
    });
  }
}
