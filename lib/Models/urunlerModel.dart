class urunlerModel {
  final int id;
  final String ad;
  final List beden;
  final int fiyat;
  final int stok;
  final List renk;
  final List depo;

  urunlerModel(
      {required this.id,
      required this.ad,
      required this.beden,
      required this.fiyat,
      required this.stok,
      required this.renk,
      required this.depo});

  factory urunlerModel.fromJson(json) => urunlerModel(
      id: json["id"] ?? "",
      ad: json["ad"] ?? "",
      beden: json["beden"] ?? "",
      fiyat: json["fiyat"] ?? "",
      stok: json["stok"] ?? "",
      renk: json["renk"] ?? "",
      depo: json["depo"] ?? "");

  toJson() {
    return {
      "id": id,
      "ad": ad,
      "beden": beden,
      "fiyat": fiyat,
      "stok": stok,
      "renk": renk,
      "depo": depo
    };
  }
}
