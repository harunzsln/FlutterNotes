import 'package:flutter/material.dart';
import 'package:ornek_proje/custom_card.dart';

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomCardView(),
              /*Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Image.asset(
                  "assets/images/postgrescrnshot.png",
                  height: 200,
                ),
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: Card(
                  elevation: 5,
                  shadowColor: const Color.fromARGB(221, 78, 78, 78),
                  child: Align(child: Text("Bu bir karttır")),
                ),
              ),*/
            ],
          ),
        ),

        /* body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Tam ortada hizalama
            children: [
              Text('Merhaba, Flutter!'),
              Image.asset(
                "assets/images/postgrescrnshot.png",
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              /* Text('Merhaba, Flutter!'),
              SizedBox(height: 50), // Yatayda boşluk bırakma
              Text('Bu bir örnek projedir.'),
              SizedBox(height: 20), // Yatayda boşluk bırakma
              Image.asset(
                "assets/images/postgrescrnshot.png",
                width: 200,
                height: 200,
              ),*/
              ElevatedButton(
                onPressed: () {
                  print("Butona tıklandı");
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                child: Text(
                  "Bana Tikla",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: Text("Bana Tikla")),

              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.directions_bike_rounded,
                  color: Colors.indigo.shade200,
                  size: 50,
                ),
              ),
            ],
          ),
        ),*/
      ),
    );
  }
}
