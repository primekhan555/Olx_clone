import 'package:flutter/material.dart';
import 'Chats.dart';

class Sell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateSell();
}

class StateSell extends State<Sell> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          'WHAT ARE YOU OFFERING?',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black
            ),
        ),
      ),
      body: Center(
        child: Container(
          height: 540,
          width: 300.0,
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 90,
            // mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              gridItem(Icons.mobile_screen_share, 'Mobiles', Chats()),
              gridItem(Icons.directions_car, 'Vehicles', Chats()),
              gridItem(Icons.developer_board,'Property for Sale', Chats()),
              gridItem(Icons.developer_board,'Property for Rent', Chats()),
              gridItem(Icons.tv,' Electronics & Home Appliances', Chats()),
              gridItem(Icons.personal_video,'Animals', Chats()),
              gridItem(Icons.cake,'Jobjs', Chats()),
              gridItem(Icons.menu, 'More Categories', Chats()),
            ],
          ),
        ),
      ));

  gridItem(IconData icon, String text, Widget screen) {
    return InkWell(
      onTap: (){
        var _route1= MaterialPageRoute(builder: (BuildContext context)=>screen);
        Navigator.of(context).push(_route1);
      },
        child: Container(
      // decoration: BoxDecoration(
      //   border: Border(bottom:BorderSide(width: 1.0),right: BorderSide(width: 1.0))
      // ),
      // color: Colors.blue,
      height: 150.0,
      width: 50.0,
      padding: const EdgeInsets.only(top: 0),
      margin: EdgeInsets.only(top: 0, bottom: 2),
      child: Column(
        children: <Widget>[
          Center(
              child: Icon(icon,size: 35,),
              ),
          Text(
            '$text',
            style: TextStyle(fontSize: 10.0),
          )
        ],
      ),
    ));
  }
}
