import 'package:flutter/material.dart';
import 'ActiveTab.dart';
class MyOrders extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => StateMyOrders();
  }
  
  class StateMyOrders extends State<MyOrders> {
  @override
  Widget build(BuildContext context) =>
  DefaultTabController(length: 3, 
  child: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.grey[100],
      title: Text('MY ORDERS'),
      bottom: TabBar(
        unselectedLabelColor: Colors.black,
        labelColor: Colors.blue[700],
        indicatorColor: Colors.blue[700],
        // labelStyle: TextStyle(fontWeight: FontWeight.w900),
        tabs: [
        Tab(text: 'ACTIVE',),
        Tab(text: 'SCHEDULED',),
        Tab(text: 'EXPIRED',)
      ]),
    ),
    body: TabBarView(children:<Widget> [
      ActiveTab(),
      ActiveTab(),
      ActiveTab(),
    ]),
  )
  );
}