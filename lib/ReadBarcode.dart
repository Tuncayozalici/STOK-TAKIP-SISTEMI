import 'package:finalprojesi/ListedPage.dart';
import 'package:finalprojesi/Widgets/MyAppBar.dart';
import 'package:finalprojesi/Widgets/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ReadBarcode extends StatelessWidget {
  const ReadBarcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Barkod Okuma")),
      drawer: MyAppBar(),
      body: Center(
        child: Column(
          children: [
            MyButton(
                text_: "Okuma İşlemini Başlat",
                onPressed_: () {
                  FlutterBarcodeScanner.getBarcodeStreamReceiver(
                          "#ff6666", "Cancel", false, ScanMode.DEFAULT)!
                      .listen((barcode) {
                    ListedPage(barcode);
                  });
                })
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
