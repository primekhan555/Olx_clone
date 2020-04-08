import 'package:flutter/material.dart';

class ChatAllTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateTabAllTab();
}

class StateTabAllTab extends State<ChatAllTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1)),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
              icon: Icon(
                Icons.message,
                size: 75,
              ),
              onPressed: () => print("hello")),
        ),
        Padding(padding: EdgeInsets.only(top: 40.0)),
        Text(
          'No messages, yet?',
          style:
              TextStyle(fontWeight: FontWeight.w900, color: Colors.grey[800]),
        ),
        Padding(padding: EdgeInsets.only(top: 40.0)),
        Padding(
          padding: const EdgeInsets.only(right:10.0,left: 10.0),
          child: Text(
            "We'll keep messages for any items you're trying to buy in here",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 100.0)),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          padding: EdgeInsets.all(10.0),
          onPressed: () => print("hello"),
          child: Text(
            "Explore The Latest ADS",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 17,
            ),
          ),
        )
      ],
    ));
  }
}
