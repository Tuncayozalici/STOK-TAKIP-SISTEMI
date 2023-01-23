import 'package:finalprojesi/MainPage.dart';
import 'package:finalprojesi/Models/yoneticiModel.dart';
import 'package:finalprojesi/Services/auth.dart';
import 'package:finalprojesi/Widgets/MyButton.dart';
import 'package:finalprojesi/Widgets/MyInputField.dart';
import 'package:flutter/material.dart';

import 'Widgets/MyAlertDialog.dart';

class EPostaLogin extends StatefulWidget {
  EPostaLogin({super.key});

  @override
  State<EPostaLogin> createState() => _EPostaLoginState();
}

class _EPostaLoginState extends State<EPostaLogin> {
  static Auth yetki = new Auth();
  static late List<yoneticiModel> yoneticiler = yetki.yoneticiList;

  TextEditingController ePostaControl = new TextEditingController();
  TextEditingController sifreControl = new TextEditingController();
  bool loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stok Takip Uygulaması")),
      body: Center(
        child: Column(
          children: [
            MyInputField(
              hintText_: "E-posta adresi",
              controller_: ePostaControl,
            ),
            MyInputField(
              hintText_: "Şifre",
              controller_: sifreControl,
            ),
            MyButton(
                text_: "Giriş Yap",
                onPressed_: () {
                  for (int i = 0; i < yoneticiler.length; i++) {
                    if (yoneticiler[0].email == ePostaControl.toString() &&
                        yoneticiler[2].sifre == sifreControl.toString()) {
                      loggedIn = true;
                    }
                  }

                  if (loggedIn) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => MainPage())));
                  } else {
                    showDialog(
                        context: context,
                        builder: (ctx) => MyAlertDialog(
                              alertText: "E-posta veya Şifre hatalı girildi!",
                              buttonText: "Geri Dön",
                            ));
                  }
                }),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
