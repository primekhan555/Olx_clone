import 'package:flutter/material.dart';
import 'HelpSupport.dart';
import 'InvoicesBilling.dart';
import 'Setting.dart';

class MyProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateMyProfile();
}

class StateMyProfile extends State<MyProfile> {
  List<Widget> classes = [InvoicesBilling(), Setting(), HelpSupport()];
  List<IconData> icon = [Icons.storage, Icons.settings, Icons.help];
  List<String> heading = [
    'Buy Packages & My Orders',
    'Settings',
    'Help & Support'
  ];
  List<String> subHeading = [
    'Packages, orders, billing and invoices',
    'Privacy and logout',
    'Help center and legal terms'
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 90.0, left: 90.0)),
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('images/pic1.jpeg'),
                    radius: 60.0,
                    backgroundColor: Colors.transparent,
                  ),
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Text('Faisal Khan',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (_, index) => ListTile(
                    leading: Icon(icon[index]),
                    title: Text(
                      heading[index],
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    subtitle: Text(subHeading[index]),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      var route1 = MaterialPageRoute(
                          builder: (BuildContext context) => classes[index]);
                      Navigator.of(context).push(route1);
                    },
                  ),
                  itemCount: heading.length,
                ),
              )
            ],
          ),
        ),
      );
}
