import 'package:flutter/material.dart';

class AdsTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateAdsTab();
}

class StateAdsTab extends State<AdsTab> {
  @override
  Widget build(BuildContext context) => Container(
          child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1)),
          Padding(
            padding: const EdgeInsets.only(right: 78.0),
            child: IconButton(
                icon: Icon(
                  Icons.directions_bike,
                  color: Colors.green[300],
                  size: 125,
                ),
                onPressed: () => print("hello")),
          ),
          Padding(padding: EdgeInsets.only(top: 120.0)),
          Text(
            "you haven't listed anything yet",
            style:
                TextStyle(fontWeight: FontWeight.w900, color: Colors.grey[800]),
          ),
          Padding(padding: EdgeInsets.only(top: 40.0)),
          Text(
            "Let go of what ou don't use anymore",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.grey),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.all(10.0),
            onPressed: () => print("hello"),
            child: Text(
              "POST",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 17,
              ),
            ),
          )
        ],
      ));
}
