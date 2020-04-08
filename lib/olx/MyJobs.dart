import 'package:flutter/material.dart';
import 'AdsTab.dart';
import 'FavoritesTab.dart';

class MyJobs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateMyJobs();
}

class StateMyJobs extends State<MyJobs> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          title: Text(
            'MY JOBS',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
          ),
          bottom: TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              labelStyle: TextStyle(fontWeight: FontWeight.w900),
              tabs: [
                Tab(
                  text: 'ADS',
                ),
                Tab(
                  text: 'FAVORITES',
                )
              ]),
        ),
        body: TabBarView(children: <Widget>[
          AdsTab(),
          FavoritesTab(),
        ]),
      ));
}
