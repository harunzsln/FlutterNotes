import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Fira Code"),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Ornek Proje',
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade200,
          centerTitle: true,
        ),
        body: Text('Merhaba, Flutter!'),
      ),
    );
  }
}
