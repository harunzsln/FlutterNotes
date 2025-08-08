import 'package:flutter/material.dart';
import 'package:ornek_proje/models/elements_model.dart';

class CreateList extends StatefulWidget {
  const CreateList({super.key});

  @override
  State<CreateList> createState() => _CreateListState();
}

class _CreateListState extends State<CreateList> {
  List<ElementsModel> elements = [
    ElementsModel('Element 1', 'Subtitle 1'),
    ElementsModel('Element 2', 'Subtitle 2'),
    ElementsModel('Element 3', 'Subtitle 3'),
  ];

  /*elements = [
    {'title': 'element 1', 'subtitle': 'subtitle 1'},

    {'title': 'element 2', 'subtitle': 'subtitle 2'},

    {'title': 'element 3', 'subtitle': 'subtitle 3'},
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: elements.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(elements[index].title),
          subtitle: Text(elements[index].subtitle),
        ),
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.grey, height: 0),
      ),
    );
  }
}


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


      ListView.builder(
        itemCount: elements.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(elements[index]['title']),
          subtitle: Text(elements[index]['subtitle']),
        ),
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