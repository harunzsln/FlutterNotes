import 'package:flutter/material.dart';
//import 'flutter_notes/home_screens.dart';
import 'flutter_notes/login_screen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Fira Code"),
      home: LoginScreen(),
    );
  }
}

/*

//ZIKIRMATIK

import 'screens/zikirmatik.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Fira Code"),
      home: const Zikirmatik(),
    );
  }
}
*/

/*

//CREATE LIST

import 'flutter_notes/create_list.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Fira Code"),
      home: const CreateList(),
    );
  }
}
*/
