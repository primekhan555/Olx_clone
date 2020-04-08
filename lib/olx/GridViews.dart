import 'package:flutter/material.dart';
import 'MyProfile.dart';
import 'MyJobs.dart';
import 'Explore.dart';
import 'Sell.dart';
import 'Chats.dart';

class GridViews extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GridViewState();
}

class GridViewState extends State<GridViews> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Explore(),
    Chats(),
    Sell(),
    MyJobs(),
    MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home,color: Colors.blue),
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 20,
            ),
            title: Text(
              'EXPLORE',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.chat,color: Colors.blue,),
            icon: Icon(
              Icons.chat,
              color: Colors.black,
              size: 18,
            ),
            title: Text(
              'CHATS',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.monetization_on,color: Colors.blue,),
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.monetization_on,
              color: Colors.black,
              size: 18,
            ),
            title: Text(
              'SELL',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.school,color: Colors.blue,),
            icon: Icon(
              Icons.school,
              color: Colors.black,
              size: 18,
            ),
            title: Text(
              'My ADS',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                // backgroundColor: Colors.blue
              ),
            ),
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person_outline,color: Colors.blue,),
            icon: Icon(
              Icons.person_outline,
              color: Colors.black,
              size: 18,
            ),
            title: Text(
              'My ACCOUNT',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(
          color: Colors.blue
        ),
      ),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
