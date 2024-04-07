import 'package:charityms/widgets/campaign_details.dart';
import 'package:charityms/widgets/campaign_list.dart';
import 'package:flutter/material.dart';
import 'package:charityms/screens/theme.dart';

class DaetailsScreen extends StatelessWidget {
  final Campaign? campaign;

  const DaetailsScreen({Key? key, this.campaign}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: BodyDetails(
        campaign: campaign,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: 20),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.keyboard_return,
          color: Colors.black,
        ),
      ),
      title: Text(
        "Back".toUpperCase(),
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
