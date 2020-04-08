import 'package:flutter/material.dart';

class BuyPackages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateBuyPackages();
}

class StateBuyPackages extends State<BuyPackages> {
  // List<IconData> Screen = [];
  IconData trailingIcon = Icons.arrow_forward_ios;
  List<String> heading = ['Categories', 'Location'];
  List<String> subHeading = ['Search Category', 'Pakistan'];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Text('BUY PACKAGES'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, top: 25.0, bottom: 25.0),
                  child: Text(
                    'SELECT OPTIONS TO SHOW PACKAGES',
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (_, index) => ListTile(
                    title: Text(
                      heading[index],
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    subtitle: Text(subHeading[index]),
                    trailing: Icon(trailingIcon),
                  ),
                  itemCount: heading.length,
                ),
              ),
              FlatButton(
                color: Colors.blue[700],
                onPressed: () => print("hello"),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.89,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Center(
                    child: Text(
                      'SHOW PACKAGES',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, 
                          color: Colors.white
                          ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
