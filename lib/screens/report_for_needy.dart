import 'package:charityms/bloc/authbloc_state.dart';
import 'package:charityms/screens/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/authbloc_bloc.dart';
import '../widgets/Report_Form.dart';


class RportForNeedy extends StatelessWidget {
  @override
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: kDefaultPadding,
                child: Text(
                  'if you need help or know someone who needs it,plaese enter your info',
                  style: TextStyle(
                    // fontFamily: 'Painted Paradise - Demo',
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: kDefaultPadding,
                child: ReportForm(),
              ),
              SizedBox(
                height: 25,
              ),
              // Padding(
              //   padding: kDefaultPadding,
              //   child: PrimaryButton(
              //     buttonText: 'Submit',
              //   ),
              // ),
              Image(
                image: AssetImage('images/ch.png'),
              )
            ],
          ),
        ),
      );
    });
  }
}