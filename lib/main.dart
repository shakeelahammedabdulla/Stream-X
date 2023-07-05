import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stream/auth_page.dart';
import 'package:stream/firebase_options.dart';



// real logic of zego cloud main.dart commented below


// import 'dart:math' as math;
// import 'package:flutter/material.dart';
// import 'package:stream/screen.dart';

// /// Note that the userID needs to be globally unique,
// final String localUserID = math.Random().nextInt(10000).toString();

// /// Users who use the same callID can in the same call.
// const String callID = "group_call_id";
// var conferenceDTextCtrl1 = TextEditingController();
// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return  const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }




import 'dart:math' as math;

/// Note that the userID needs to be globally unique,
final String localUserID = math.Random().nextInt(10000).toString();

/// Users who use the same callID can in the same call.
const String callID = "group_call_id";
var conferenceDTextCtrl1 = TextEditingController();
void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}

