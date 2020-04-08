import 'package:flutter/material.dart';

class HelpSupport extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateHelpSupport();
}

class StateHelpSupport extends State<HelpSupport> {
  List<String> heading = [
    'Help Center',
    'Rate us',
    'Invite friends to OLX',
    'Become a beta tester',
    'Version'
  ];
  List<String> subHeading = [
    'See FAQ and contact support',
    'If you love our app, please take a moment to rate it',
    ' invite your friends to buy and sell',
    'Test new features in advance',
    '13.31.005'
  ];
  List<IconData> trailingIcons = [
    Icons.arrow_forward_ios,
    Icons.arrow_forward_ios,
    null,
    Icons.arrow_forward_ios,
    null
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Text('HELP & SUPPORT'),
        ),
        body: Container(
            child: ListView.builder(
          itemBuilder: (_, index) => ListTile(
            title: Text(
              heading[index],
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            subtitle:
                subHeading[index] == null ? null : Text(subHeading[index]),
            trailing: trailingIcons[index] == null? null: Icon(trailingIcons[index]),
          ),
          itemCount: heading.length,
        )),
      );
}
