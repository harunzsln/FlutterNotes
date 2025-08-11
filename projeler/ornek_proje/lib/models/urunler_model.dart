class Urun {
  final int id;
  final int kategori;
  final String isim;
  final String resim;

  Urun(this.id, this.kategori, this.isim, this.resim);

  Urun.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      kategori = json['kategori'],
      isim = json['isim'],
      resim = json['resim'];
}

class Kategori {
  final int id;
  final String isim;

  Kategori(this.id, this.isim);

  Kategori.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      isim = json['isim'];
}
