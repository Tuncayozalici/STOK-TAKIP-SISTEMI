class yoneticiModel {
  yoneticiModel(
      {required this.email,
      required this.kullaniciadi,
      required this.sifre,
      required this.tc,
      required this.tel});
  String email;
  String kullaniciadi;
  String sifre;
  String tc;
  String tel;

  factory yoneticiModel.fromJson(json) => yoneticiModel(
      email: json["email"] ?? "",
      kullaniciadi: json["kullaniciadi"] ?? "",
      sifre: json["sifre"] ?? "",
      tc: json["tc"] ?? "",
      tel: json["tel"] ?? "");

  toJson() {
    return {
      "email": email,
      "kullaniciadi": kullaniciadi,
      "sifre": sifre,
      "tc": tc,
      "tel": tel
    };
  }
}
