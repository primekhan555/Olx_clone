import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StateExplore();
}

class StateExplore extends State<Explore> {
  // BuildContext context;
  //  var query=MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) => Scaffold(
   
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          actions: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () => print('object'),
                    icon: Icon(
                      Icons.location_on,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  Text(
                    'PAKISTAN',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.5)),
                  IconButton(
                    onPressed: () => print('object'),
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    color: Colors.grey[200],
                    child: Container(
                      height: 50.0,
                      margin: EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 5.0, top: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border.all(width: 3.0, color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                          hintText: 'Find Cars, Mobile Phones and more...',
                          fillColor: Colors.black,
                          focusColor: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 10, top: 35)),
                      Text(
                        'Browse Categories',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.4)),
                      Text(
                        'SEE ALL',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  Container(
                    // color: Colors.amber,
                    height: 340.0,
                    child: GridView.count(
                      primary: false,
                      physics: NeverScrollableScrollPhysics(),
                      // padding: const EdgeInsets.all(20),
                      // crossAxisSpacing: 10,
                      // mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      children: <Widget>[
                        gridItem('MOBILES', Icons.mobile_screen_share,
                            Colors.yellow),
                        gridItem(
                            'VEHCLES', Icons.directions_car, Colors.cyan[200]),
                        gridItem('PROPERTY FOR SALE', Icons.developer_board,
                            Colors.pink[200]),
                        gridItem('PROPERTY FOR RENT', Icons.developer_board,
                            Colors.cyan[200]),
                        gridItem('ELECTRONICS & HOME APPLICENCES', Icons.tv,
                            Colors.grey[300]),
                        gridItem(
                            'BIKES', Icons.directions_bike, Colors.brown[200]),
                        gridItem('BUSINESS INDUSTRIAL & AGRICULTURE',
                            Icons.home, Colors.pink[100]),
                        gridItem('SERVICES', Icons.build, Colors.yellow[200]),
                        gridItem('JOBS', Icons.cake, Colors.pink[300]),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 0.0),
                    margin: EdgeInsets.only(left: 0.0, right: 190.0),
                    // alignment: MainAxisAlignment.start,
                    child: Text(
                      'Fresh recommendations',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 830.0,
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      primary: false,
                      padding: const EdgeInsets.all(5),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        gridImagesItem('images/pic1.jpeg'),
                        gridImagesItem('images/pic2.jpeg'),
                        gridImagesItem('images/pic2.jpeg'),
                        gridImagesItem('images/pic1.jpeg'),
                        gridImagesItem('images/pic1.jpeg'),
                        gridImagesItem('images/pic2.jpeg'),
                        gridImagesItem('images/pic2.jpeg'),
                        gridImagesItem('images/pic1.jpeg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

Widget gridItem(String itemText, IconData itemIcon, Color itemback) {
  return Container(
    // color: Colors.amber,
    height: 150.0,
    padding: const EdgeInsets.only(top: 0),
    margin: EdgeInsets.only(top: 0, bottom: 2),
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(shape: BoxShape.circle, color: itemback),
          child: Icon(
            itemIcon,
            size: 30,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 5, top: 5.0),
          child: Text(
            '$itemText',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
          ),
        )
      ],
    ),
  );
}

Widget gridImagesItem(String path) {
  return Container(
    decoration:
        BoxDecoration(border: Border.all(width: 1.0, color: Colors.grey)),
    // color: Colors.amber,
    height: 150.0,
    padding: const EdgeInsets.only(top: 0),
    margin: EdgeInsets.only(top: 0, bottom: 2),
    child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(15.0),
          child: Image.asset('$path'),
          // decoration: BoxDecoration(shape: BoxShape.circle, color: itemback),
          // child: Icon(
          //   itemIcon,
          //   size: 30,
          // ),
        ),
        Container(
          margin: EdgeInsets.only(right: 5, top: 5.0),
          child: Text(
            'itemText',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9),
          ),
        )
      ],
    ),
  );
}
