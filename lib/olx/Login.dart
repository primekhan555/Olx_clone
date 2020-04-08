// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:pin_input_text_field/pin_input_text_field.dart';
// import 'package:progress_dialog/progress_dialog.dart';
// // import 'package:service_provider/Classes/PostServices/post_services.dart';
// // import 'package:service_provider/Resources/allcolors.dart' as colors;
// // import 'package:service_provider/Resources/fonts.dart' as fonts;
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Login extends StatefulWidget {
//   final String phone;
//   // final FirebaseAuth _auth = FirebaseAuth.instance; // remove from final
//   Login({Key key, @required this.phone}) : super(key: key);
//   @override
//   EngineerPhoneVerificationState createState() =>
//       EngineerPhoneVerificationState(phone: phone);
// }

// class EngineerPhoneVerificationState extends State<Login> {
//   String phone;
//   String smsCode;
//   String verificationId;
//   FirebaseAuth _auth = FirebaseAuth.instance;
//   int checkUser;
//   String pinCode = '';
//   ProgressDialog progressDialog;

//   EngineerPhoneVerificationState({Key key, @required this.phone});
//   final FirebaseMessaging _messaging = FirebaseMessaging();
//   String userTokenNo;

// // sendToPostService() async{
// //                 await PostServices().postServices(context,userTokenNo);
// //                 sharedUserData.setInt("serviceName", 1);
// //             }
//   @override
//   void initState() {
//     super.initState();
//     initPhoneAuthanticationMethod();

//     _messaging.getToken().then((token) {
//       //print(token);
//       userTokenNo = token;
//       print('this is the token $userTokenNo');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     progressDialog =
//         new ProgressDialog(context, type: ProgressDialogType.Normal);
//     progressDialog
//       ..style(
//         message: 'Verifying...',
//         borderRadius: 10.0,
//         backgroundColor: Colors.white,
//         progressWidget: CircularProgressIndicator(),
//         elevation: 10.0,
//         insetAnimCurve: Curves.easeInOut,
//         progress: 0.0,
//         maxProgress: 100.0,
//         progressTextStyle: TextStyle(
//             // color: colors.lightGreen,fontFamily: fonts.halveBold,
//             fontSize: 16.0,
//             fontWeight: FontWeight.w400),
//         // messageTextStyle: TextStyle(
//         //   // color: colors.lightGreen,fontFamily: fonts.halveBold, fontSize: 16.0, fontWeight: FontWeight.w400)
//       );

//     return Scaffold(
//       // backgroundColor: colors.lightGreen,
//       body: SingleChildScrollView(
//         child: Stack(
//           children: <Widget>[
//             // Image.asset("assets/texturewhite.png"),
//             verifi()
//           ],
//         ),
//       ),
//     );
//   }

//   verifi() {
//     return Container(
//       child: Center(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(top: 150, left: 10, right: 10),
//               child: Text(
//                 "NUMBER VERIFICATION",
//                 style: TextStyle(
//                     // color: colors.halfWhite,
//                     // fontFamily: fonts.halveBold,
//                     fontSize: 25),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
//               child: Text(
//                 "Waiting to automatically detect an SMS sent to",
//                 style: TextStyle(
//                     // color: colors.halfWhite,
//                     // fontFamily: fonts.halveLightVertical,
//                     fontSize: 16),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Text("$phone",
//                   style: TextStyle(
//                       // color: colors.halfWhite,
//                       // fontFamily: fonts.halveLightVertical,
//                       fontSize: 16)),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
//               child: Container(
//                 width: MediaQuery.of(context).size.width / 2.5,
//                 child: PinInputTextField(
//                   pinLength: 6,
//                   onChanged: (pin) // edit for auto detectioon
//                       {
//                     if (pin.length == 6) {
//                       setState(() {
//                         pinCode = pin;
//                       });
//                     }
//                   }, // auto detection end
//                   decoration: UnderlineDecoration(
//                     textStyle: TextStyle(
//                       // color: colors.halfWhite,
//                       color: Colors.amber,
//                       fontSize: 24,
//                       // fontFamily: fonts.halveLightVertical
//                     ),
//                     lineHeight: 5,
//                     // color: colors.halfWhite,
//                   ),
//                   autoFocus: true,
//                   textInputAction: TextInputAction.go,
//                   onSubmit: (pin) {
//                     FirebaseAuth.instance.currentUser().then((user) {
//                       if (user != null) {
//                         // sharedUserData.setString("currentUserId", user.uid);
//                       } else {
//                         usersignIn(pin);
//                       }
//                     });
//                   },
//                   //onChanged: (){},
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: Container(
//                 width: MediaQuery.of(context).size.width / 2,
//                 child: Divider(
//                   // color: colors.halfWhite,
//                   height: 5,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text("Enter the 6- digit code",
//                   style: TextStyle(
//                       color: Colors.amber,

//                       // fontFamily: fonts.halveLightVertical,
//                       fontSize: 16)),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: pinCode == ''
//                   ? Container()
//                   : FlatButton(
//                       onPressed: () => {
//                         progressDialog.show(),
//                         FirebaseAuth.instance.currentUser().then((user) {
//                           if (user != null) {
//                             // sharedUserData.setString("currentUserId", user.uid);
//                           } else {
//                             usersignIn(pinCode);
//                           }
//                         })
//                       },
//                       child: Text(
//                         "PROCEED",
//                         style: TextStyle(
//                             color: Colors.lightGreen,
//                             // fontFamily: fonts.halveBold,
//                             fontSize: 16),
//                       ),
//                       // color: colors.halfWhite,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: new BorderRadius.circular(10.0),
//                       ),
//                     ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> initPhoneAuthanticationMethod() async {

//     // sharedUserData = await SharedPreferences.getInstance();
//     final PhoneCodeAutoRetrievalTimeout autoRetrive = (String verId) {
//       this.verificationId = verId;
//     };

//     final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
//       debugPrint("code sended");
//       this.verificationId = verId;
//     };

//     final PhoneVerificationCompleted verifiedSuccess = (AuthCredential user) {
      
//     };

//     final PhoneVerificationFailed verifyFailed = (Exception error) {
//       debugPrint(" \n\n\n\ $error \n\n\n\n\n\n");
//       progressDialog.dismiss();
//     };

//     await FirebaseAuth.instance.verifyPhoneNumber(
//       phoneNumber: phone,
//       codeAutoRetrievalTimeout: autoRetrive,
//       codeSent: smsCodeSent,
//       timeout: const Duration(seconds: 5),
//       verificationCompleted: verifiedSuccess,
//       verificationFailed: verifyFailed,
//     );
//   }

//   void usersignIn(var smsOTP) {
//     FirebaseAuth.instance.currentUser().then((user) async {
//       if (user != null) {
//         print("\n\n\n\n\n\n user exist \n\n\n\n\n");
//       } else {
//         try {
//           final AuthCredential credential = PhoneAuthProvider.getCredential(
//             verificationId: verificationId,
//             smsCode: smsOTP,
//           );
//           final AuthResult user =
//               (await _auth.signInWithCredential(credential));
//           final FirebaseUser currentUser = await _auth.currentUser();
//           progressDialog.dismiss();

//           print(
//               "\n\n\n\n\n\n\n current user is =  $currentUser \n\n\n\n\n\n Current user id is${user.user.uid} \n\n\n\n\n\n\n\n\n");
//           // sharedUserData.setString("currentUserId", user.user.uid);
//         } catch (e) {
//           print("\n\n\n\n\n\n errr ocuure $e \n\n\n\n\n");
//         }
//       }
//     });
//   }
// }
