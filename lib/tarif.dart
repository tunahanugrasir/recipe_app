class Tarif {
  int? porsiyon;
  List<Malzeme>? malzemeler;
  String? baslik;
  String? imageURL;

  Tarif(this.baslik, this.imageURL, this.porsiyon, this.malzemeler);

  static List<Tarif> tarifler = [
    Tarif(
      'Spagetti',
      'assets/spagetti.jpg',
      1,
      [
        Malzeme(1, "paket", "makarna"),
        Malzeme(1, "tatlı kaşığı", "tuz"),
        Malzeme(1, "litre", "su"),
      ],
    ),
    Tarif(
      'Kurabiye',
      'assets/cookie.jpg',
      1,
      [
        Malzeme(110, "gram", "tereyağ"),
        Malzeme(2, "", "yumurta"),
        Malzeme(1, "su bardağı", "esmer şeker"),
        Malzeme(0.5, "su bardağı", "beyaz şeker"),
        Malzeme(1, "çay kaşığı", "kabartma tozu"),
        Malzeme(1, "paket", "vanilya"),
        Malzeme(1.5, "su bardağı", "damla çikolata"),
        Malzeme(2, "su bardağı", "un"),
        Malzeme(0.5, "su bardağı", "kırılmış fındık"),
      ],
    ),
    Tarif(
      'Magnolia',
      'assets/magnolia.jpg',
      1,
      [
        Malzeme(1, "litre", "süt"),
        Malzeme(3, "yemek kaşığı", "un"),
        Malzeme(2, "yemek kaşığı", "nişasta"),
        Malzeme(1, "su bardağı", "şeker"),
        Malzeme(1, "", "yumurta sarısı"),
        Malzeme(1, "paket", "sıvı krema"),
        Malzeme(1, "paket", "vanilya"),
        Malzeme(2, "paket", "Eti Burçak"),
        Malzeme(1, "kilo", "çilek"),
      ],
    ),
    Tarif(
      'Köfte',
      'assets/meatball.jpg',
      1,
      [
        Malzeme(500, "gram", "dana kıyma"),
        Malzeme(1, "su bardağı", "kuru ekmek"),
        Malzeme(2, "", "soğan"),
        Malzeme(0.5, "demet", "maydonoz"),
        Malzeme(1, "çay kaşığı", "karabiber"),
        Malzeme(3, "çay kaşığı", "kimyon"),
        Malzeme(1, "çay kaşığı", "karbonat"),
        Malzeme(3, "çay kaşığı", "tuz"),
      ],
    ),
    Tarif(
      'Pizza',
      'assets/pizza.jpg',
      1,
      [
        Malzeme(5, "su bardağı", "un"),
        Malzeme(1, "paket", "instant maya"),
        Malzeme(1, "yemek kaşığı", "toz şeker"),
        Malzeme(0.5, "yemek kaşığı", "tuz"),
        Malzeme(4, "yemek kaşığı", "tuz"),
        Malzeme(2, "su bardağı", "ılık su"),
        Malzeme(2, "su bardağı", "domates sosu"),
        Malzeme(2, "yemek kaşığı", "zeytinyağı"),
        Malzeme(1, "çay kaşığı", "kuru fesleğen"),
        Malzeme(1, "çay kaşığı", "kekik"),
        Malzeme(1, "isteğe bağlı", "mozzarella"),
        Malzeme(1, "isteğe bağlı", "kaşar peyniri"),
        Malzeme(1, "isteğe bağlı", "sucuk"),
        Malzeme(1, "isteğe bağlı", "sosis"),
        Malzeme(1, "isteğe bağlı", "mantar"),
        Malzeme(1, "isteğe bağlı", "mısır"),
      ],
    ),
    Tarif(
      'Lahmacun',
      'assets/lahmacun.jpg',
      1,
      [
        Malzeme(2, "adet", "kırmızı biber"),
        Malzeme(3, "adet", "yeşil biber"),
        Malzeme(2, "adet", "orta boy soğan"),
        Malzeme(1, "demet", "maydanoz"),
        Malzeme(2, "adet", "domates"),
        Malzeme(1, "yemek kaşığı", "domates salçası"),
        Malzeme(1, "yemek kaşığı", "biber salçası"),
        Malzeme(0.5, "çay kaşığı", "pul biber"),
        Malzeme(1, "çay kaşığı", "toz kırmızı biber"),
        Malzeme(1, "çay kaşığı", "tuz"),
        Malzeme(1, "çay bardağı", "sıvıyağ"),
        Malzeme(0.25, "çay bardağı", "su"),
        Malzeme(500, "gram", "dana kıyma"),
        Malzeme(2, "su bardağı", "su"),
        Malzeme(1, "tatlı kaşığı", "tuz"),
        Malzeme(1, "çay kaşığı", "toz şeker"),
      ],
    )
  ];
}

class Malzeme {
  double? miktar;
  String? olcek;
  String? isim;

  Malzeme(this.miktar, this.olcek, this.isim);
}
