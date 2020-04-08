import 'package:flutter/material.dart';

class FavoritesTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateFavoritesTab();
}

class StateFavoritesTab extends State<FavoritesTab> {
  @override
  Widget build(BuildContext context) => Container(
          child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 100.0)),
          Padding(
            padding: const EdgeInsets.only(right: 78.0),
            child: IconButton(
                icon: Icon(
                  Icons.healing,
                  color: Colors.pink[300],
                  size: 125,
                ),
                onPressed: () => print("hello")),
          ),
          Padding(padding: EdgeInsets.only(top: 120.0)),
          Text(
            "you haven't liked anything yet",
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.grey[800]),
          ),
          Padding(padding: EdgeInsets.only(top: 40.0)),
          Text(
            "Collect all the things you like in place",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey),
          ),
          Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01)),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(10.0),
            onPressed: () => print("hello"),
            child: Text(
              "DISCOVER",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 17,
              ),
            ),
          )
        ],
      ));
}
