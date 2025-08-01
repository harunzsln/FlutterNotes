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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
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
                child: Text(
                  "Harun",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              Padding(
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
              ),
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
