import 'package:flutter/material.dart';
import 'ChatAllTab.dart';
import 'ChatBuyingTab.dart';
import 'ChatSellingTab.dart';

class Chats extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateChats();
}

class StateChats extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey[100],
              title: Text(
                'CHATS',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    color: Colors.black),
              ),
              bottom: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.blue,
                  indicatorColor: Colors.blue,
                  labelStyle: TextStyle(fontWeight: FontWeight.w900),
                  tabs: [
                    Tab(text: "ALL"),
                    Tab(text: "BUYING"),
                    Tab(text: "SELLING"),
                  ]),
            ),
            body: TabBarView(
              children: <Widget>[
                ChatAllTab(),
                ChatBuyingTab(),
                ChatSellingTab(),
              ],
            )));
  }
}
