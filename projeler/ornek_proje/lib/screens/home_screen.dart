import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List letters = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: letters.length,
        itemBuilder: (context, index) => ListTile(
          title: Text("${index + 1}. letter of alphabet is ${letters[index]}"),
        ),
      ),

      /*
      listview.separated widgetini kullanarak liste elemanları arasına separator ekleyebiliriz.
      kullanımı oldukça basittir separatorBuilder ile her iki eleman arasına bir ayraç ekleyebiliriz.

      ListView.separated(
        itemCount: elemanlar.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(
            "${index + 1}. letter of alphabet is ${elemanlar[index]}",
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
      ), 
      
       */

      /*
      
      BURADA ELEMEAN SAYISI AZ AMA EGER BURADAKI ELEMANLARIN SAYISI 1000 VEYA DAHA FAZLA OLURSA
      O ZAMAN LISTVIEW YA DA DIGER METHODLARI KULLANMAK COK UYGUN OLMAZ CUNKU ORNEGIN LIST VIEW
      TUM ELEMANLARI BIR ANDA RENDER EDER VE BU DA UYGULAMANIN YAVAŞLAMASINA VE KASMASINA NEDEN OLUR.
      O YUZDEN EGER ELEMAN SAYISI AZ OLUNCA BU YONTEMLERI KULLANMAK DAHA UYGUN OLABILIR.
      ELEMAN SAYISININ DAHA FAZLA OLDUĞU DURUMLARDA LISTVIEW.BUILDER KULLANMAK DAHA UYGUN OLUR. BU WIDGETI KULLANIRSAK ELEMANLARI EKRANA HEPSINI TEK SEFERDE VERMIYOOR SAYFAYI KAYDIRDIKCA DIGER ELEMANLARI YUKLER.

      */

      /* ListView(
        children: List.generate(
          elemanlar.length,
          (index) => Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            color: Colors.blue,
            child: Text(elemanlar[index]),
          ),
        ),
      ),
      */

      /*SingleChildScrollView(
        child: Column(
          children: List.generate(
            elemanlar.length,
            (index) => Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              color: Colors.blue,
              child: Text(elemanlar[index]),
            ),
          ),

          elemanlar
              .map(
                (e) => Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(20),
                  color: Colors.blue,
                  child: Text(e),
                ),
              )
              .toList(),
        ),
      ),*/
    );
  }
}
