import 'package:flutter/material.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 400,
      // height: 200,
      // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 5, color: Colors.indigo),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 53, 59, 97),
            blurRadius: 3,
            spreadRadius: 10,
            offset: Offset(0, 10), // Gölgenin konumu
          ),
        ],
        /*gradient: LinearGradient(
          colors: [const Color.fromARGB(255, 64, 242, 255)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),*/
      ),
      alignment: Alignment.center,
      child: Text("Harun", style: TextStyle(color: Colors.white, fontSize: 30)),
    );
  }
}
