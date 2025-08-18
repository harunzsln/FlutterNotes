import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? email;

  String? password;

  void _getUserInfoFromDevice() async {
    final prefs = await SharedPreferences.getInstance();
    email = prefs.getString("email");
    password = prefs.getString("password");
  }

  @override
  void initState() {
    _getUserInfoFromDevice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("$email $password")));
  }
}

/*




import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ornek_proje/models/urunler_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UrunlerModel? _veriler;
  List<Urun> _urunler = [];

  void _loadData() async {
    final dataString = await rootBundle.loadString('assets/files/data.json');
    final dataJson = jsonDecode(dataString);

    _veriler = UrunlerModel.fromJson(dataJson);
    _urunler = _veriler!.urunler;
    setState(() {});
  }

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  void filterData(int id) {
    _urunler = _veriler!.urunler
        .where((verilerEleman) => verilerEleman.kategori == id)
        .toList();
    setState(() {});
  }

  void showAllProducts() {
    _urunler = _veriler!.urunler;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _veriler == null
            ? const Text('Loading...')
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showAllProducts();
                    },
                    child: const Text('Tüm ürünleri göster'),
                  ),
                  _kategorilerView(),
                  _urunlerView(),
                ],
              ),
      ),
    );
  }

  ListView _urunlerView() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: _urunler.length,
      itemBuilder: (context, index) {
        final Urun urun = _urunler[index];

        return ListTile(
          /*
          leading: Image.network(
            urun.resim,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),*/
          title: Text(urun.isim),
        );
      },
      separatorBuilder: (context, index) => const Divider(height: 10),
    );
  }

  Row _kategorilerView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_veriler!.kategoriler.length, (index) {
        final kategori = _veriler!.kategoriler[index];
        return GestureDetector(
          onTap: () => filterData(kategori.id),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),

            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 192, 219, 241),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(kategori.isim),
          ),
        );
      }),
    );
  }
}



 */
