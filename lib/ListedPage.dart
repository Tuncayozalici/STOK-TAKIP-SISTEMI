import 'package:finalprojesi/Models/urunlerModel.dart';
import 'package:finalprojesi/Services/auth.dart';
import 'package:finalprojesi/Widgets/MyAlertDialog.dart';
import 'package:finalprojesi/Widgets/MyAppBar.dart';
import 'package:finalprojesi/Widgets/OneRowOfInfo.dart';
import 'package:flutter/material.dart';

class ListedPage extends StatelessWidget {
  ListedPage(String itemId) {
    Auth yetki = new Auth();

    var urunler = yetki.urunList;

    for (var e in urunler) {
      if (e.id == itemId) {
        model = e;
      }
    }

    if (model.id == -1) {
      MyAlertDialog(
          alertText: "Girilen Eşya Geçersiz.", buttonText: "Geri Dön");
    }
  }

  static urunlerModel model = urunlerModel(
      id: -1,
      ad: "geçersiz",
      beden: [""],
      fiyat: -1,
      stok: -1,
      renk: [],
      depo: []);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ürün Sayfası")),
      drawer: MyAppBar(),
      body: Center(
        child: Column(
          children: [
            OneRowOfInfo(
              yazilar: ["Ürünün İsmi", "Stok Miktarı", "Fiyat"],
            ),
            OneRowOfInfo(yazilar: [
              model.ad,
              model.stok.toString(),
              model.fiyat.toString()
            ]),
            SizedBox(height: 40),
            OneRowOfInfo(yazilar: ["Mevcut Boyutlar"]),
            OneRowOfInfo(yazilar: [...model.beden]),
            SizedBox(height: 40),
            OneRowOfInfo(yazilar: ["Mevcut Renkler"]),
            OneRowOfInfo(yazilar: [...model.renk]),
            SizedBox(height: 40),
            OneRowOfInfo(yazilar: ["Mevcut Depolar"]),
            OneRowOfInfo(yazilar: [...model.depo])
          ],
        ),
      ),
    );
  }
}
