// import 'package:flutter/material.dart';
// import 'Login.dart';

// class PassingNo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => StatepassingNo();
// }

// class StatepassingNo extends State<PassingNo> {
//   var _numberController = TextEditingController();
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.grey[100],
//           title: Text('Enter Number'),
//         ),
//         body:
//         //  Container(
//         //   child: Expanded(
//             // child: 
//             Column(
//               children: <Widget>[
//                 TextField(
//                   controller: _numberController,
//                 ),
//                 FlatButton(
//                     onPressed: () {
//                       var router = MaterialPageRoute(
//                           builder: (BuildContext context) => Login(
//                                 phone: "${_numberController.text}",
//                               ));
//                               Navigator.of(context).push(router);
//                     },
//                     child: Text('click'))
//               ],
//             ),
//           );
//       //   ),
//       // );
// }
