// // import 'package:careem_clone/Resources/allcolors.dart';
// import 'package:flutter/material.dart';
// // import 'package:country_code_picker/country_code_picker.dart';

// import 'Login.dart';
// // import 'Rider_Phone_Verification_Page.dart';

// class RiderSignUpPage extends StatefulWidget {
//   @override
//   RiderSignUpPageState createState() => RiderSignUpPageState();
// }

// class RiderSignUpPageState extends State<RiderSignUpPage> {
//   String _phoneNumber = '';
//   String _countryCode = '+92';
//   String _fullNumber;
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             new Container(
//               padding: EdgeInsets.only(left: 20, right: 30, top: 100),
//             ),
//             new Container(
//               padding: EdgeInsets.only(left: 20, right: 30, top: 50),
//               child: new Row(
//                 children: <Widget>[
//                   // Container(
//                   //   padding: EdgeInsets.only(right: 5, left: 5),
//                   //   child: new CountryCodePicker(
//                   //     onChanged: (value) {
//                   //       this._countryCode = value.toString();
//                   //     },
//                   //     initialSelection: 'PK',
//                   //   ),
//                   // ),
//                   new Flexible(
//                     child: new TextField(
//                         keyboardType: TextInputType.phone,
//                         inputFormatters: [
//                         ],
//                         decoration: new InputDecoration(
//                           hintText: 'Phone Number',
//                           hintStyle: TextStyle(),
//                           labelStyle: TextStyle(
//                             color: Colors.lightGreen,
//                           ),
//                           enabledBorder: UnderlineInputBorder(),
//                         ),
//                         onChanged: (value) {
//                           setState(() {
//                             this._phoneNumber = value;
//                             this._fullNumber =
//                                 this._countryCode + this._phoneNumber;
//                             print("full number = " + _fullNumber);
//                             print("\n\n\n\n\n\n\n$_fullNumber\n\n\n\n\n\n");
//                           });
//                         }),
//                   ),
//                 ],
//               ),
//             ),
//             continueButtonCode(height / 2),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget continueButtonCode(double paddingFromTop) {
//     return Padding(
//       padding: EdgeInsets.only(top: paddingFromTop),
//       child: Container(
//         width: 300,
//         height: 60,
//         decoration: BoxDecoration(
//             color: Colors.lightGreen,
//             border: Border.all(
//               color: Colors.lightGreen,
//             ),
//             borderRadius: BorderRadius.all(Radius.circular(7))),
//         child: FlatButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) =>
//                       Login(phone: _fullNumber)),
//             );
//           },
//           child: Text(
//             "CONTINUE",
//             style: TextStyle(color: Colors.white, fontSize: 18),
//           ),
//         ),
//       ),
//     );
//   }
// }