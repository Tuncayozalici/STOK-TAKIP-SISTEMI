import 'package:finalprojesi/MainPage.dart';
import 'package:finalprojesi/ReadBarcode.dart';
import 'package:finalprojesi/Widgets/MyButton.dart';
import 'package:flutter/material.dart';

import '../StokPage.dart';

enum CurPage { Ana, Stok, Siparis, Barkod, Diger }

class MyAppBar extends StatelessWidget {
  static CurPage current = CurPage.Ana;

  void ChangeToMain() {
    current = CurPage.Ana;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(width: 4)),
          child: Text(
            "Sayfalar",
            style: TextStyle(fontSize: 40),
          ),
        ),
        MyButton(
            text_: "Ana Sayfa",
            onPressed_: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            }),
        MyButton(
            text_: "Stok Sayfası",
            onPressed_: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => StokPage())));
            }),
        MyButton(
            text_: "Barkod Okuma",
            onPressed_: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => ReadBarcode())));
            }),
        MyButton(
            text_: "Çıkış Yap",
            onPressed_: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            })
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    ));
  }
}

class BtnToMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyButton(
      text_: "Ana Sayfa",
      onPressed_: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => MainPage())));
      },
    );
  }
}
