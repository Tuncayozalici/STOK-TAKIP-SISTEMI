import 'package:finalprojesi/ReadBarcode.dart';
import 'package:finalprojesi/StokPage.dart';
import 'package:finalprojesi/Widgets/MyAppBar.dart';
import 'package:finalprojesi/Widgets/MyButton.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      drawer: MyAppBar(),
      body: Center(
          child: Column(
        children: [
          Text("Hoşgeldiniz."),
          SizedBox(height: 80),
          MyButton(
              text_: "Stok Sayfası",
              onPressed_: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => StokPage())));
              }),
          SizedBox(height: 20),
          MyButton(
              text_: "Barkod Okuma",
              onPressed_: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReadBarcode()));
              }),
          SizedBox(height: 20),
          MyButton(
              text_: "Çıkış",
              onPressed_: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              }),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      )),
    );
  }
}
