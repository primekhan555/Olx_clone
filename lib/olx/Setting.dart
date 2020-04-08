import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateSetting();
}

class StateSetting extends State<Setting> {
  List<String> heading = [
    'Privacy',
    'Notifications',
    'Logout',
    'Deactivate account and delete my data'
  ];
  List<String> subheading = [
    'phone number visibility',
    'Recommendations & Special communications',
    null,
    null
  ];
  List<IconData> trailingIcons = [Icons.arrow_forward_ios, null, null, null];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Text('SETTINGS'),
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
                  subheading[index] == null ? null : Text(subheading[index]),
              trailing: trailingIcons[index] == null
                  ? null
                  : Icon(trailingIcons[index]),
            ),
            itemCount: heading.length,
          ),
        ),
      );
}
