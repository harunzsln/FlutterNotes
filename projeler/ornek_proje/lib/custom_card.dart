import 'package:flutter/material.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            offset: Offset(0, 10),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text("Harun", style: TextStyle(color: Colors.white, fontSize: 30)),
    );
  }
}
