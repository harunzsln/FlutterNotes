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
        ),*/
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
        ),
      ),
    );
  }
}
