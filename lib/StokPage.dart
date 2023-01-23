import 'package:finalprojesi/Models/urunlerModel.dart';
import 'package:finalprojesi/Services/auth.dart';
import 'package:finalprojesi/Widgets/MyAppBar.dart';
import 'package:finalprojesi/Widgets/OneRowOfInfo.dart';
import 'package:flutter/material.dart';

class StokPage extends StatelessWidget {
  StokPage({super.key});

  static Auth yetki = new Auth();
  static List<urunlerModel> urunList = yetki.urunList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stok Sayfası")),
      drawer: MyAppBar(),
      body: Center(
          child: Column(
        children: [
          OneRowOfInfo(
            yazilar: ["Ürün Id'si", "Ürün İsmi", "Stok Sayısı", "Fiyatlar"],
            hideBtn: true,
          ),
          for (var element in urunList)
            OneRowOfInfo(
              yazilar: [
                element.id.toString(),
                element.ad,
                element.stok.toString(),
                element.fiyat.toString()
              ],
            ),
        ],
      )),
    );
  }
}
