import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olx/olx/GridViews.dart';

void main(){
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
    statusBarColor: Colors.teal[700],
    systemNavigationBarColor: Colors.white,
  ));
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridViews(),
    );
  }
}

