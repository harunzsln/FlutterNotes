import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Fira Code"),
      home: const HomeScreen(),
    );
  }
}
